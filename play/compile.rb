#!/usr/bin/env ruby

$: << 'lib'
require 'travis/model/build/config'
require 'travis/model/build/config/matrix'
require 'core_ext/hash/deep_symbolize_keys'
require 'active_support/hash_with_indifferent_access'
require 'active_support/core_ext/hash/slice'
require 'active_support/core_ext/object/try'

config = YAML.load_file('compile.yaml')

build_config = Travis::Model::Build::Config.new(config).normalize
build_config = Travis::Model::Build::Config::Matrix.new(build_config)
configs = build_config.expand
puts(configs)