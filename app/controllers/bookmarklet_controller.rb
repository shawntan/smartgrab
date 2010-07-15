class BookmarkletController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		respond_to do |format|
      format.js
    end
	end
	
	def page
		@page = Page.find_by_url(params[:page][:url] );
		if @page 
			render :js => "#{params[:callback]}(#{@page.to_json(:include => [:annotations])});"
		else
			@page = Page.new(params[:page])
			if @page.save
				render :js => "#{params[:callback]}(#{@page.to_json},true);"
			end
		end
	end
	def annotate
		    @annotation = Annotation.new(params[:annotation])
		    script = "#{params[:callback]}(#{@annotation.to_json});";
    		respond_to do |format|
    			if @annotation.save
    				format.js {render(:js => script )}
    				format.html 
    			else
    			end
    		end
	end
	
end