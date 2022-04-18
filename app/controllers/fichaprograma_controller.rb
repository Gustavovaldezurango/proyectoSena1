class FichaprogramaController < ApplicationController
    before_action :authenticate_user!
    def def index
     
        @fichaprograma = Fichaprograma.all

    end

end
