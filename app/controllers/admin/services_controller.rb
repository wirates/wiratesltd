class Admin::ServicesController < Admin::BaseController

	before_filter :authenticate_admin!, :except => []
  
    def index
      @services = Service.all
    end

    def new
      @service = Service.new
    end

    def create
      @service = Service.new(params[:service])
      if @service.save
        flash[:notice] = "Pages created successfully"
        redirect_to admin_services_path
      else
        render :new
      end
    end

    def edit
      @service = Service.find(params[:id])
    end

    def update
      @service = Service.find(params[:id])
      if @service.update_attributes(params[:service])
        flash[:notice] = "Pages saved successfully"
        redirect_to admin_services_path
      else
        render :edit
      end
    end

end
