class ProgramasController < ApplicationController
    class AreasController < ApplicationController
        before_action :authenticate_user!
        def index
            @programas = Programa.all
        end
    
    
    
end
