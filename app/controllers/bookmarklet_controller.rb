class BookmarkletController < ApplicationController
	before_filter :login_required  
	skip_before_filter :verify_authenticity_token
	def index
		respond_to do |format|
      format.js
    end
	end
	def stylesheet
		respond_to do |format|
			format.css
		end
	end
	
	def page
		if(params[:id])
			@page = current_user.pages.find(params[:id]);
		else
			@page = curent_user.pages.find_by_url(params[:page][:url] );
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
		    @annotation = current_user.pages.new(params[:annotation])
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
