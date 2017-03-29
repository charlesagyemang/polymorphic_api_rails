class ApplicationController < ActionController::API

  #Include Serialization...
  include ActionController::Serialization

  #function to render pretter json
  def render_pretty_json(params)
    render json: JSON.pretty_generate(params.as_json)
  end

  #Do this login in the front end
  def getPostsById (id)
    post_id = []
    posts = Post.all
    posts.each do |post|
      if post.person_id == id
        post_id.push(post)
      end
    end
    post_id
  end

end
