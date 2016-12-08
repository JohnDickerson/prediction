class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def splash
    @controller_text = "Text from the controller!"
    render :index   # <-- name of the view, index.html.erb
  end
  
  def marketData
      data = Transaction.where(market_id: params[:mid])
      render :json => data
  end

  def marketGraph
      render :market
  end

  # Access the currently logged in user
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
