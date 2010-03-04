module Spree
  module ExtendedLogin
    class Config
      include Singleton
      include PreferenceAccess

      # Usage:
      # Spree::ExtendedLogin::Config[:foo] returns the foo preference

      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          ExtendedLoginConfiguration.find_or_create_by_name("Login email configuration")
        end
      end
    end
  end
end
