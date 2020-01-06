class CommentsController < ApplicationController
    def index
      @comment = Comment.all.order(created_at: :desc)
      @user = current_user
    end

    def new
    @comment = Comment.new
    end

    def create
      @comment = Comment.create params.require(:comment).permit(:content, :image) # POINT
      if @comment.save
        flash[:notice]= "投稿しました"
        redirect_to("/comments")
      else
        flash[:notice]= "投稿に失敗しました"
        redirect_to("/comments/new")
      end
    end

    def show
      @comment = Comment.find(params[:id])
      @user = current_user
    end

    def edit
      @comment = Comment.find(params[:id])
      @user = current_user
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to("/comments")
      flash[:notice]="削除に成功しました"

    end

    def update
      @comment = Comment.find(params[:id])
      @comment.content = params[:content]
      if @comment.save
        flash[:notice]= "投稿を編集しました"
          redirect_to("/comments")
        else
          render("comments/edit")
      end
    end
end
