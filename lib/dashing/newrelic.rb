require 'dashing/newrelic/version'

module Dashing
  module Newrelic
    class << self

      attr_accessor :configuration

      def config
        self.configuration ||= Configuration.new
      end

      def configure
        yield config if block_given?
      end
    end
  end
end

require 'dashing/newrelic/configuration'
require 'dashing/newrelic/engine'
