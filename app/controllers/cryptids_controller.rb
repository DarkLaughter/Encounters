class CryptidsController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :delete, :destroy]

    def index
        @cryptids = Cryptid.all
    end
    
    def new
        @cryptid = Cryptid.new
    end
    
    def create

        if @cryptid.valid?
            redirect_to cryptid_path(@cryptid), notice: "Cryptid Successfully Added"
        else
            flash[:errors] = @cryptid.errors.full_messages
            redirect_to new_cryptid_path
        end
    end
    
    def edit
    end
    
    def update
        @cryptid.update(cryptid_params)
        redirect_to cryptid_path(@cryptid)
    end
    
    def show
        @cryptid = Cryptid.find(params[:id])
    end
    
    def destroy
        @cryptid.destroy
        redirect_to cryptids_path, notice: "Successful Deletion"    
    end

    private

    def cryptid_params
        params.require(:cryptid).permit(:name, :characteristics, :country, :lore, :img_url)
    end

    def find_user
        @cryptid = Cryptid.find(params[:id])
    end
end
