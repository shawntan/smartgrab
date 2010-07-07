class BookmarkletController < ApplicationController
	def index
		respond_to do |format|
      format.js   # foo/bar.js.erb
    end
	end
	def page
		@page = Page.find_by_url(params[:page][:url]);
		if @page 
			render :js => "#{params[:c]}(#{@page.to_json});"
		else
			@page = Page.new(params[:page])
			if @page.save
				render :js => "#{params[:c]}(#{@page.to_json},true);"
			end
		end
	end
end