module Spree::ExtendedLogin::UserSessionsControllerExtend
  def self.included(controller)
    controller.prepend_after_filter :do_stuff, :only => :create
  end

  def do_stuff
    ExtendedLoginMailer.deliver_login(@user_session.user) if @user_session
  end
end
