require 'rest_client'
require './lib/response/success'
require './lib/response/error'

module Olio
  class Client
    def initialize(base_url)
      @base_url = base_url
    end

    def get_articles
      url = @base_url + 'articles.json'
      response = RestClient.get url
      articles_hash = JSON.parse(response.body).map(&:deep_symbolize_keys)
      Response::Success.new(articles: articles_hash)
    rescue RestClient::Forbidden
      Response::Error.new
    end
  end
end
