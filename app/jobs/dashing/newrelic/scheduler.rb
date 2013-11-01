require 'delegate'
require 'newrelic_api'

module Dashing
  module Newrelic
    class Scheduler < ::SimpleDelegator

      attr_reader :config, :frequence

      def initialize(frequence)
        @config               = Dashing::Newrelic.config
        @frequence            = frequence
        ::NewRelicApi.api_key = api_key
        super(config)
      end

      def call
        schedule if valid?
      end

      private

      def schedule
        Dashing.scheduler.every frequence, first_in: 1.second.since do
          app.threshold_values.each do |v|
            Dashing.send_event(key(app, v), value: v.metric_value.to_i)
          end
        end
      end

      def valid?
        true
      end

      def app
        ::NewRelicApi::Account.find(:first).applications.first
      end

      def key(app, value)
        "#{app.id}_rpm_#{value.name.downcase.gsub(/ /, '_')}"
      end

      def api_key
        config.api_key
      end

      def application_ids
        config.application_ids
      end

    end
  end
end
