require 'bundler/setup'
require 'sinatra'
require 'active_record'
require 'yaml'

configure do
  ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
  ActiveRecord::Base.establish_connection(Sinatra::Application.environment)
end

get '/' do
  'hi'
end
