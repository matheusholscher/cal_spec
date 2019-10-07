class BuscaTemperaturaController < Application_controlle
    require 'net/http'
    require 'json'

    def buscar 
        render json: ComunicacaoOpenWeather.new.buscar(cidade_params[:cidade])
    end

    private 
    def temp_params
        params.permit(:cidade)
    end

end