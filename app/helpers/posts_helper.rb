module PostsHelper

  def published_text(published)
    if published 
      return "Published"
    else
      return "NOt Published"
    end
  end
end
