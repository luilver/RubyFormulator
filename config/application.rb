# frozen_string_literal: true

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'app'))

require 'boot'
Bundler.require :default, ENV.fetch('RACK_ENV', 'development')

require 'active_record'
require './app/entities/poll_option'
require './app/api/poll'
require './app/api/poll_type'
require './app/api'
require './app/entities/poll'
require './app/entities/poll_type'
require './app/models/choice'
require './app/models/binary_choice'
require './app/models/text_choice'
require './app/models/poll'
require './app/models/poll_option'
require './app/models/poll_type'
require './app/models/quiz'
require './app/ruby_forms'

# Non working
# Dir[File.expand_path('./app/**/*.rb', __dir__)].each { |f| require f }

begin
  yaml = 'config/database.yml'
  if File.exist?(yaml)
    require 'erb'
    config = HashWithIndifferentAccess.new(
      YAML.safe_load(ERB.new(File.read(yaml)).result, aliases: true)
    )
  elsif ENV['DATABASE']
    nil
  else
    raise "Could not load database configuration. No such file - #{yaml}"
  end
rescue Psych::SyntaxError => e
  raise 'YAML syntax error occurred while parsing config/database. ' \
        'Please note that YAML must be consistently indented using spaces. ' \
        "Tabs are not allowed. Error: #{e.message}"
end

env = ENV['RACK_ENV'] || 'development'
adapter = config[env][:adapter]
database = config[env][:database]
db_options = { adapter:, database: }
config[:connection] = ActiveRecord::Base.establish_connection(db_options)
