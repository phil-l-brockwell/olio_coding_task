class LikesController < ApplicationController
  def create
    like = Like.new(like_params)

    if like.save
      flash[:success] = 'You liked an Article!'
    else
      flash[:error] = like.errors
    end

    redirect_to root_path
  end

  private

  def like_params
    params.require(:like).permit(:article_id)
  end
end
