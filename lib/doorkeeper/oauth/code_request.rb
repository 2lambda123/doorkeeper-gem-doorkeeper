# frozen_string_literal: true

module Doorkeeper
  module OAuth
    class CodeRequest
      attr_reader :pre_auth, :resource_owner

      def initialize(pre_auth, resource_owner)
        @pre_auth = pre_auth
        @resource_owner = resource_owner
      end

      def authorize
        auth = Authorization::Code.new(pre_auth, resource_owner)
        auth.issue_token!
        CodeResponse.new(pre_auth, auth, response_on_fragment: pre_auth.response_mode == "fragment")
      end

      def deny
        pre_auth.error = Errors::AccessDenied
        pre_auth.error_response
      end
    end
  end
end
