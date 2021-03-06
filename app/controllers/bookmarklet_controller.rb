class BookmarkletController < ApplicationController
	before_filter :login_required  
	skip_before_filter :verify_authenticity_token	
	# View controllers.
	def index
		respond_to do |format|
			format.js 
			format.html
		end
	end
	def test
		respond_to do |format|
			format.js 
			format.html
		end
	end

	def stylesheet
		respond_to do |format|
			format.css
		end
	end

	#Action controllers
	def get_extractor
		if(params[:extractor_id]) 
			@extractor = current_user.extractors.find(params[:extractor_id])
		elsif(params[:domain] && params[:name])
			@extractor = current_user.extractors.find(:first,:conditions => {:name => params[:name],:domain => params[:domain]})
		end
		render :js => "#{params[:callback]}(#{@extractor.to_json(:include=> :annotations,:except=>[:cmodel])});"
	end
	def create_extractor
		@extractor = current_user.extractors.create(params[:extractor]);
		render :js => "#{params[:callback]}(#{@extractor.to_json(:include=> :annotations,:except=>[:cmodel])});"
	end
	def find_extractors
		@extractors = current_user.extractors.find_all_by_domain(params[:domain])
		render :js => "#{params[:callback]}(#{@extractors.to_json(:except=>[:cmodel])});"
	end

	def create_page
		@page = current_user.extractors.find(params[:page][:extractor_id]).pages.find_or_create_by_url(params[:page][:url])
		@page.update_attributes(params[:page]);
		@page.save
		render :js => "#{params[:callback]}();"
	end

	def create_annotation
		if(params[:annotation][:id]) 
			@annotation = Annotation.find(params[:annotation][:id])
			@annotation.update_attributes(params[:annotation])
		else 
			@annotation = Annotation.new(params[:annotation]);
		end
		if @annotation.save
			render :js => "#{params[:callback]}(#{@extractor.to_json(:include=> :annotations,:except=>[:cmodel])});"
		end
	end
	def edit_annotation
		@annotation = Annotation.find(params[:annotation][:id])
		@annotation.update_attributes(params[:annotation])
		@annotation.save
	end	

	private	
	def access_denied
		respond_to do |format|
			format.js	{render(:js => 'alert("Please log in to Parcels before labeling.");')}
			format.html {redirect_to :controller => 'sessions',:action => 'new'}
		end
	end
end
