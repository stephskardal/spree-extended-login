class ExtendedLoginMailer < ActionMailer::QueueMailer
  helper "spree/base"

  def login(user)
    @subject = "User Login"
    @body = "#{user.login} logged in to [SHOP NAME] ON #{Time.now.strftime("%m-%d-%Y %H:%M")} using IP address #{user.last_login_ip}"
    @recipients = user.email
    @from = "[ADD FROM EMAIL HERE TO STORE PREFERENCES]"
    @sent_on = Time.now
  end
end
