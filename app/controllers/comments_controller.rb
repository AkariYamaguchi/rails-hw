class CommentsController < ApplicationController
  def index
    @commnet = Comment.all.order(created_at: :desc)

  end
    def new
    @comment = Comment.new
    end

  def create
    @comment = Comment.create params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
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
    @comment.save
    redirect_to("/comments")
  end
end
