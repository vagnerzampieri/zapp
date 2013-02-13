require 'rubygems'
require 'bundler/setup'
require 'fileutils'
require 'yaml'

task default: [:init]

desc "Initializer application"

# rake init[$HOME]
task :init, :config_path do |task, params|
  p params[:config_path]

  p YAML.load(File.open(params[:config_path]))
end
