class CompanyController < ApplicationController
	
	def show
    	@company = Company.find(params[:id]) 
    
    	@title = "#{@company.title}"
    	@meta_title = "{@company.meta_title}"
    	@meta_keywords = "#{@company.meta_keyword}"
    	@meta_description = "#{@company.meta_desc}"
  	end

end
