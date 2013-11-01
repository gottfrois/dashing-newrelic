module Dashing
  module Newrelic
    class Engine < ::Rails::Engine

      # config.assets.paths.unshift       Dashing::Newrelic::Engine.root.join('vendor', 'assets', 'javascripts', 'dashing')
      # config.assets.paths.unshift       Dashing::Newrelic::Engine.root.join('vendor', 'assets', 'stylesheets', 'dashing')
      config.paths['app/views'].unshift Dashing::Newrelic::Engine.root.join('app', 'views', 'dashing', 'newrelic')

      initializer 'require dashing newlic jobs' do
        Dir[Dashing::Newrelic::Engine.root.join('app', 'jobs', '**', '*.rb')].each { |file| require file }
      end

    end
  end
end
