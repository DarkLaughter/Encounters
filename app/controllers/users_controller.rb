class UsersController < ApplicationController    
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    def new
        @user = User.new
    end
    
    def create
        byebug
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user), notice: "Profile Success"
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end
    
    def edit
    
    end
    
    def update
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end
    
    def show
    end
    
    def destroy
        @user.destroy 
        redirect_to cryptids_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :age, :contact, :background)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
