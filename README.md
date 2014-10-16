# Travis::Model::Build::Config

This is exact copy of config generator from https://github.com/travis-ci/travis-core. Only required files are copied.

## Installation

Add this line to your application's Gemfile:

    gem 'travis-build-config', github: 'ayufan/travis-model-build-config'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install travis-build-config

## Usage

### Load config and normalize it context

    build_config = Build::Config.new(config, multi_os: true, dist_group_expansion: true).normalize

### Generate build variants

    matrix_config = Build::Config::Matrix.new(build_config, multi_os: true, dist_group_expansion: true)
    configs = matrix_config.expand

### Fast failure?

    matrix_config.fast_failure?

### Fast failure config filter

    matrix_config.allow_failure_configs

Then you have to check if any of the configs match one of the allowed_failure_configs.

## Contributing

1. Fork it ( https://github.com/ayufan/travis-model-build-config/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
