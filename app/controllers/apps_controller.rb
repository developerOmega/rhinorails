class AppsController < ApplicationController

    before_action :consulta, only: [:edit, :update, :destroy, :show]
    
    def index
        @apps = App.where user_id: current_user.id
    end
    
    def new
        @app = App.new
    end

    def create
        @app = current_user.apps.new parametro
        
        if @app.save
            return render :agregar
        end

        render :new
    end

    def edit 
    end

    def update
        @app.update parametro
        redirect_to apps_path
    end

    def destroy
        @app.destroy
        render :eliminar
    end


    def show
    end

    def consulta
        @app = App.find params[:id]
    end

    def eliminar

    end

    def agregar
        
    end

    private
    
    def parametro
        params.require(:app).permit :estado, :image 
    end 


end
