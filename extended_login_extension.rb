class ExtendedLoginExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://www.spinlocksolutions.com/"

  def activate
    Admin::MailSettingsController.class_eval do
      before_filter :update_extended_login_settings, :only => :update
      def update_extended_login_settings
        Spree::ExtendedLogin::Config.set(params[:login_preferences])
      end
    end

    Spree::UserSessionsController.send(:include, Spree::ExtendedLogin::UserSessionsControllerExtend)
  end
end
