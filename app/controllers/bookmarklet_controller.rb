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
	
	def stylesheet
		respond_to do |format|
			format.css
			format.html {redirect_back_or_default('/')}
		end
	end
	
#Action controllers
	def extractor
		#Find, if have id, use id otherwise find using domain.
		if(params[:id])
			@extractor = current_user.extractors.find(params[:id]); 
		else
			@extractor = current_user.extractors.find_by_domain(params[:domain] );
		end
		
		jsonstring = @extractor.to_json(:include => [:annotations])
		if @extractor
			render :js => "#{params[:callback]}(#{jsonstring});"
		else
			@extractor = current_user.extractors.new(:domain => params[:domain])			
			if @extractor.save
				render :js => "#{params[:callback]}(#{jsonstring},true);"
			end
		end
		if(params[:page] and !@extractor.pages.exists?(:url => params[:page][:url]))
			@extractor.pages.create(params[:page])
		end
	end
	
	def annotate
		if(params[:annotation][:id]) 
			@annotation = Annotation.find(params[:annotation][:id])
      @annotation.update_attributes(params[:annotation])
		else 
			extractor = current_user.extractors.find(params[:extractor_id]); 
			extractor.annotations.create(params[:annotation])
			script = "#{params[:callback]}(#{extractor.to_json});";
		end
		respond_to do |format|
			format.js {render(:js => script )}
			format.html 
		end
	end
	
	def access_denied
		respond_to do |format|
			format.js	{render(:js => 'alert("Please log in to Parcels before labeling.");')}
			format.html {redirect_to :controller => 'sessions',:action => 'new'}
		end
	end
end

