class CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :edit, :destroy]
    
    def new
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.create(comment_params)
        redirect_to comment_path(@comment.id)
    end
    
    def edit
    end
    
    def update
    @comment.update(comment_params)
    redirect_to comment_path(@comment.id)
    end
    
    def show
    end
    
    def destroy
    @comment.destroy
    redirect_to user_path(@comment.user_id)
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :date)
    end

    def find_comment
        @comment = Comment.find(params[:id])
    end
end
