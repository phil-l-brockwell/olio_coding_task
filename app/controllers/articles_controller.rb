require './lib/olio/client'

class ArticlesController < ApplicationController
  def index
    @like = Like.new
    response = olio_client.get_articles

    if response.success?
      @articles = response.details[:articles].map { |article| Article.new(article) }
    else
      @articles = []
      flash[:error] = response.message
    end
  end

  private

  def olio_client
    @olio_client ||= Olio::Client.new(APP_CONFIG[:olio_base_url])
  end
end
