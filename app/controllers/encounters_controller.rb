class EncountersController < ApplicationController
    before_action :find_encounter, only: [:show, :edit, :delete, :update, :destroy]
    
    def index
        @encounters = Encounter.all
    end
    
    def new
        @encounter = Encounter.new
    end
    
    def create
        @encounter = Encounter.create(encounter_params)

        if @encounter.valid?
            redirect_to cryptid_path(@encounter.cryptid_id), notice: "Thank You for sharing"
        else
            flash[:errors] = @encounter.errors.full_messages
            redirect_to new_encounter_path
        end
    end
    
    def edit
    
    end
    
    def update
        @encounter.update(encounter_params)
        redirect_to cryptid_path(@encounter.cryptid_id)
    end
    
    def show
        
    end
    
    def destroy
        @encounter.destroy 
        redirect_to encounters_path, :notice "Encounter Deleted"
    end

    private 
    def encounter_params
        params.require(:encounter).permit(:variable)
    end

    def find_encounter
        @encounter = Encounter.find(params[:id]) 
    end
    
end
