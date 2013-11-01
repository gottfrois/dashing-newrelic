module Dashing
  module Newrelic
    class Configuration

      attr_accessor :api_key, :application_ids

      def initialize
        @api_key          = ''
        @application_ids  = []
      end

    end
  end
end
