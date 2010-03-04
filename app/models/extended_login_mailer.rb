class ExtendedLoginMailer < ActionMailer::QueueMailer
  helper "spree/base"

  def login(user)
    @subject = "User Login"
    @body = "#{user.login} logged in to [SHOP NAME] ON #{Time.now.strftime("%m-%d-%Y %H:%M")} using IP address #{user.last_login_ip}"
    @recipients = user.email
    @from = Spree::ExtendedLogin::Config[:login_email_from]
    @cc = Spree::ExtendedLogin::Config[:login_email_cc]
    @sent_on = Time.now
  end
end
