class Admin::CompaniesController < Admin::BaseController

	before_filter :authenticate_admin!, :except => []
  
    def index
      @companies = Company.all
    end

    def new
      @company = Company.new
    end

    def create
      @company = Company.new(params[:company])
      if @company.save
        flash[:notice] = "Pages created successfully"
        redirect_to admin_companies_path
      else
        render :new
      end
    end

    def edit
      @company = Company.find(params[:id])
    end

    def update
      @company = Company.find(params[:id])
      if @company.update_attributes(params[:company])
        flash[:notice] = "Pages saved successfully"
        redirect_to admin_companies_path
      else
        render :edit
      end
    end

end
