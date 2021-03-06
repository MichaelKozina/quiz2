class CommentsController < ApplicationController
  def index
    #@comment = Comment.order("RANDOM()").first
    #@comment = Comment.all
  end
  
  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)  
    redirect_to root_path 
  end

  private
  
  def comment_params
    params.require(:comment).permit(:description, :author)
  end  
end