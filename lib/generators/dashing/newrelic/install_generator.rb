module Dashing
  module Newrelic
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        source_root File.expand_path('../../../templates', __FILE__)

        desc 'Install dashing-newrelic into your dashing application'

        def copy_initializer
          template 'initializer.rb', 'config/initializers/dashing-newrelic.rb'
        end

        def copy_job
          template 'jobs/newrelic.rb', 'app/jobs/newrelic.rb'
        end

      end
    end
  end
end
