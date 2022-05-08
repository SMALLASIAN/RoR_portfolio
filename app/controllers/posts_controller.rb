class PostsController < ApplicationController

    def index
        @posts = Post.all.order("created_at DESC")
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:post].permit(:title, :content))

        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(params[:post].permit(:title, :content))
            redirect_to @post
        else
            render 'edit'
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    private

    def post_params
        params.require(:post).permit(:title, :content)
    end


end
