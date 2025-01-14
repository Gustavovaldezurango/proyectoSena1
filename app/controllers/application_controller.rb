class ApplicationController < ActionController::Base
    include Pundit::Authorization

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private
  
    def user_not_authorized
      flash[:alert] = "NOOOOOOO."
      redirect_back(fallback_location: root_path)
    end

end
