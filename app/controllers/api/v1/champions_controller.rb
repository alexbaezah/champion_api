module Api 
    module V1
        #El nombre del controlador debe ser en plural (terminar en s) y la clase se debe llamar igual que el controlador (camelcase)
        class ChampionsController < ApplicationController
            def index 
                champions = Champion.order('created_at');
                render json: {
                    status: "Exitoso",
                    message: "campeones cargados",
                    data: champions
                }, status: :ok
            end
            #método para obtener campeón por medio del id 
            def show
                champion = Champion.find(params[:id]); #búsqueda por params a través de id
                render json: {
                    status: "Success",
                    message: "campeón por id cargado",
                    data: champion
                }, status: :ok
                
            end
            
            def create 
                champion = Champion.new(champion_params)
                if champion.save
                    render json: {
                    status: "Success",
                    message: "campeón por id cargado",
                    data: champion
                }, status: :ok
                else 
                    render json: {
                        status: "Fallido",
                        message: "campeón no creado",
                        data: champion
                    }, status: :unprocessable_entity #este hace referencia a un error
                end
            
            end
        end
    end
end