class ApplicationController < ActionController::Base
  # include ActionController::Cookies
  # include ActionController::RequestForgeryProtection
  # protect_from_forgery with: :exception
  # before_action :set_csrf_cookie
  skip_before_action :verify_authenticity_token

  #TODO: need guard for "user-only dashboard, e.g. edit existing review
  # only if logged-in to the relevant user of that review"
  #---
  #   before_action :current_user
  #   def current_user
  #     @user = (User.find_by(id: session[:user_id]) || User.new)
  #   end
  #   def logged_in?
  #     current_user.id != nil
  #   end
  #   def require_logged_in
  #     return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
  #   end
  private

  # def set_csrf_cookie
  #   cookies['CSRF-TOKEN'] = form_authenticity_token
  # end
end
