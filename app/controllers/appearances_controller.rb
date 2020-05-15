class AppearancesController < ApplicationController
    before_action :find_appearance, only: [:show, :edit, :update, :delete]
    
    def new
        @appearance = Appearance.new
    end
    
    def create
        @appearance = Appearance.create(appearance_params)
    end
    
    def edit
    end
    
    def update
        @appearance.update(appearance_params)
        redirect_to appearance_path(@appearance.id)
    end
    
    def show
    end
    
    def destroy
    @appearance.destroy
    redirect_to cryptid_path(appearance.cryptid_id)
    end

    private
    def appearance_params
        params.require(:appearance).permit(:movie, :tv_show, :fiction, :non_fiction, :cryptid_id)
    end

    def find_appearance
        @appearance = Appearance.find(params[:id])
    end
end
