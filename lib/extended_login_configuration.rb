class ExtendedLoginConfiguration < Configuration
  preference :login_email_from, :string, :default => ''
  preference :login_email_cc, :string, :default => ''
end
