class BookmarkletController < ApplicationController
	before_filter :login_required  
	skip_before_filter :verify_authenticity_token
	
	def index
		respond_to do |format|
	      format.js 
	      format.html
		end
	end
	def stylesheet
		respond_to do |format|
			format.css
			format.html {redirect_back_or_default('/')}
		end
	end
	def page
		if(params[:id])
			@page = current_user.pages.find(params[:id]);
		else
			@page = current_user.pages.find_by_url(params[:page][:url] );
		end
		if @page 
			render :js => "#{params[:callback]}(#{@page.to_json(:include => [:annotations])});"
		else
			@page = current_user.pages.new(params[:page])
			if @page.save
				render :js => "#{params[:callback]}(#{@page.to_json},true);"
			end
		end
	end
	def annotate
		page = current_user.pages.find(params[:page_id]); 
		page.annotations.create(params[:annotation])
		script = "#{params[:callback]}(#{@annotation.to_json});";
		respond_to do |format|
			format.js {render(:js => script )}
			format.html 
		end
	end

	
	def suggest
		similar_annotations = Annotation.find(
			:all,
			:select => "DISTINCT annotations.*",
			:joins => :pages,
			:conditions => [ 
				"(pages.url LIKE ?) AND (pages.user_id = ?)",
				"%#{params[:domain]}%",
				current_user.id
			]
		)
		render :js => "#{params[:callback]}(#{similar_annotations.to_json});"
	end
	def save_suggestions
		page = current_user.pages.find(params[:id]);
		annotation_ids = params[:annotation_ids]
		page.annotation_ids = annotation_ids
	end
	
	
	def access_denied
		respond_to do |format|
			format.js	{render(:js => 'alert("Please log in to Parcels before labeling.");')}
			format.html {redirect_to :controller => 'sessions',:action => 'new'}
		end
	end
end

