# Dashing::Newrelic

[Dashing-Rails](https://github.com/gottfrois/dashing-rails) widget that display Newrelic metrics.

<img src="https://dl.dropboxusercontent.com/u/29838807/newrelic-widget.png" width="200">

## Installation

Add this line to your [Dashing-Rails](https://github.com/gottfrois/dashing-rails) application's Gemfile:

    gem 'dashing-newrelic'

And then execute:

    $ bundle

## Getting Started

Follow the following steps in order to make it work on your dashing-rails project:

1. Add the following line to your `app/assets/javascripts/dashing/widgets/index.js` file:

        //= require newrelic

2. Add the following line to your `app/assets/stylesheets/dashing/widgets/index.css` file:

        *= require newrelic

3. Add the following html to your dashboard:

        <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
            <div data-id="new_relic_app_id_metric_name" data-view="Number" data-title="WidgetTitle"></div>
        </li>

        # or with https://github.com/gottfrois/dashing-hotness gem
        <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
            <div data-id="new_relic_app_id_metric_name" data-view="Hotness" data-title="WidgetTitle" data-cool="0" data-warm="100"></div>
        </li>

4. Run

        rails g dashing:newrelic:install

5. Edit `config/initializers/dashing-newrelic.rb` with your semaphore crendentials and project name as follow:

        Dashing::Newrelic.configure do |config|
            config.api_key          = 'your_new_relic_api_key'
            config.application_ids  = ['app_id']
        end

*Note: the paths to index files may have changed depending on your Dashing-Rails configuration.*

## Fields

### Required

* `data-id`: Like all widgets, you must include an identifier so that your jobs can update the value.

The `data-id` must include the `new_relic_app_id` + `the_metric_name` you are interrested in. For example:

    data-id="2299_rpm_memory"

Here is the list of available metrics:

* `rpm_apdex`
* `rpm_error_rate`
* `rpm_throughput`
* `rpm_errors`
* `rpm_response_time`
* `rpm_db`
* `rpm_cpu`
* `rpm_memory`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Author

Full credits for this widget should go to [Tair Assimov](https://github.com/assimovt).

## License

dashing-semaphore is released under the MIT License. Developed by [Tair Assimov](https://github.com/rastasheep). Adapted by [gottfrois](https://github.com/gottfrois).
