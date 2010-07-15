class BookmarkletController < ApplicationController
	def page
		@page = Page.find_by_url(params[:page][:url]);
		if @page 
			render :json => @page.to_json
		else
			@page = Page.new(params[:page])
			if @page.save
				render :json => @page.to_json
			end
		end
	end
end