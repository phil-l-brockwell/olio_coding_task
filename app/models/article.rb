class Article
  attr_reader :id, :title, :description

  def initialize(data = {})
    @id = data[:id]
    @title = data[:title]
    @description = data[:description]
  end

  def likes
    Like.where(article_id: id).count
  end
end
