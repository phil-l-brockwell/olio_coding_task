module ArticlesHelper
  def likes_string(article)
    likes = article.likes
    return '1 person liked this' if likes == 1
    "#{likes} people liked this"
  end
end
