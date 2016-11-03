class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def splash
    @controller_text = "Text from the controller!"
    render :index   # <-- name of the view, index.html.erb
  end

end
