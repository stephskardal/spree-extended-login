class ExtendedLoginExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://www.spinlocksolutions.com/"

  def activate
    Spree::UserSessionsController.send(:include, Spree::ExtendedLogin::UserSessionsControllerExtend)
  end
end
