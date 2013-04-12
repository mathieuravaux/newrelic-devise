require 'new_relic/agent/method_tracer'

module Devise
  module Models
    module Instrumentable
      extend ActiveSupport::Concern

      included do
        include NewRelic::Agent::MethodTracer
        extend NewRelic::Agent::MethodTracer
         
        
        add_method_tracer :password_digest
        add_method_tracer :valid_password?

        add_method_tracer :reset_password_token
        add_method_tracer :reset_password_by_token

        add_method_tracer :generate_confirmation_token
        add_method_tracer :send_confirmation_instructions
        add_method_tracer :send_on_create_confirmation_instructions
        add_method_tracer :send_reset_password_instructions
        add_method_tracer :send_devise_notification

        add_method_tracer :update_tracked_fields!
        

        class << self
          add_method_tracer :find_for_token_authentication
          add_method_tracer :reset_authentication_token
        end
        
      end

    end
  end
end
