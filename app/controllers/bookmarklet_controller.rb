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
		@extractor = current_user.extractors.find(params[:extractor_id]);
		render :js => "#{params[:callback]}(#{@extractor.to_json(:include=> :annotations,:except=>[:cmodel])});"
	end
	def create_extractor
		@extractor = current_user.extractors.create(params[:extractor]);
		@extractor.save
		render :js => "#{params[:callback]}(#{@extractor.to_json(:include=> :annotations,:except=>[:cmodel])});"
	end
	def find_extractors
		@extractors = current_user.extractors.find_all_by_domain(params[:domain])
		render :js => "#{params[:callback]}(#{@extractors.to_json(:except=>[:cmodel])});"
	end

	def create_page
		@page = current_user.extractor.pages.find_or_create_by_url(params[:page][:url]);
		@page.title = page[:page][:title]
		@page.save
	end

	def create_annotation
		@annotation = current_user.extractors.find(params[:extractor_id]).annotations.create(params[:page]);
		@annotation.save
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
