class AreasController < ApplicationController
    before_action :authenticate_user!
    def index
        @areas = Area.all
    end

    def new
        @area = Area.new
    end

    def create
        @area = Area.create(
            codigo_area: params[:area][:codigo_area],
            nombre_area: params[:area][:nombre_area])
        if @area.save 
            redirect_to areas_path
        else 
            render :new 
        end
    end

    def edit
        @area = Area.find(params[:id])

    end

    def update
        @area =  Area.find(params[:id])
        @area.update(
            codigo_area: params[:area][:codigo_area],
            nombre_area: params[:area][:nombre_area])
        
        redirect_to area_path(@area)

    end


    def show
        @area = Area.find(params[:id])
    end

    def destroy
        @area = Area.find(params[:id])
        @area.destroy
        redirect_to areas_path

       
    end
end


