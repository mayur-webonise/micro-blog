module PostsHelper

  def published_text(published)
    if published 
      return "Published"
    else
      return "Not Published"
    end
  end
end
