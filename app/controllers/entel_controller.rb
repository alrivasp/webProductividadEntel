class EntelController < ApplicationController
    def index
        if params[:numeroCasos].present?
            casos = params[:numeroCasos]
            @resultado = casos.to_f / 9
            @dia = 1
        else            
            @dia = 0
            @resultado = 0
        end

        if params[:numeroCasosMes].present?
            casosMes= params[:numeroCasosMes]
            @resultadoMes =  casosMes.to_f / 180
            @mes = 1
        else            
            @mes = 0
            @resultadoMes = 0
        end

    end
end
