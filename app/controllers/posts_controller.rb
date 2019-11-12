class PostsController < ApplicationController
  def index
    @posts= Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id:params[:id])

  end

  def new

  end

  def create
    @post =Post.new(content:params[:content])
    @post.save
    redirect_to("/posts/index")

    # redirect_to("/posts/index")

    # @post = current_user.posts.build(post_params)
    # if @post.save
    #   flash[:success] = "Post created!"
    #   redirect_to root_url

  end

  def destroy
    @post =Post.find_by(id:params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

  def edit
    @post= Post.find_by(id:params[:id])
  end


  # def post_params
  #   params.require(:post).permit(:content, :image)
  # end


  def edit
    @post= Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/index")
  end

end
