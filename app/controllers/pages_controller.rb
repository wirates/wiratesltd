class PagesController < ApplicationController

	def show
		@page = Page.find(params[:id]) 
    
    	@title = "#{@page.title}"
    	@meta_title = "{@page.meta_title}"
    	@meta_keywords = "#{@page.meta_keyword}"
    	@meta_description = "#{@page.meta_description}"
	end

end
