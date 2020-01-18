class CommentsController < ApplicationController
    def index
      @comment = Comment.all.order(created_at: :desc)
      @user = User.find_by(params[:id])
    end

    def new
    @comment = Comment.new
    end

    def create
      @comment = Comment.create params.require(:comment).permit(:content, :image,).merge(user_id: current_user.id)
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
      @user = User.find_by(id: @comment.user_id)
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
