# since I'm not using Device I create the notion of current_user

module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_user
  end

  def set_current_user
     #do we have a user id in the session?
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
end
