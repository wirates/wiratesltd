class ServicesController < ApplicationController

	def show
    	@service = Service.find(params[:id]) 
    
    	@title = "#{@service.title}"
    	@meta_title = "{@service.meta_title}"
    	@meta_keywords = "#{@service.meta_keyword}"
    	@meta_description = "#{@service.meta_desc}"
  	end

end
