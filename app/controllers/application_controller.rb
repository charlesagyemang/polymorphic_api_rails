class ApplicationController < ActionController::API

  #Include Serialization...
  include ActionController::Serialization

  #function to render pretter json
  def render_pretty_json(params)
    render json: JSON.pretty_generate(params.as_json)
  end

end
