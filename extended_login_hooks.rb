class ExtendedLoginHooks < Spree::ThemeSupport::HookListener
  insert_after :show_mail_settings, 'admin/mail_settings/show_more'
  insert_after :edit_mail_settings, 'admin/mail_settings/edit_more'
end
