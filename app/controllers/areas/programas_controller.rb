class Areas::ProgramasController < ApplicationController
  before_action :set_area
  before_action :authenticate_user!

  def index 
    @programas = @area.programas
  end
  def new
    @programa = @area.programas.new
  end
  def create
    @programa = @area.programas.create(params_programa)
    if @programa.save 
        redirect_to area_programas_path
    else 
        render :new 
    end
    def destroy
      @programa = @area.programas.find(params[:id])
      @programa.destroy
      redirect_to area_programas_path

     
  end
end


private

  def set_area
    @area = Area.find(params[:area_id])
  end

  def params_programa
  params.require(:programa).permit(:codigo_pro, :nombre_pro)
  end 
  

end
