class BookmarkletController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		respond_to do |format|
      format.js   # foo/bar.js.erb
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
		
	end
	
end