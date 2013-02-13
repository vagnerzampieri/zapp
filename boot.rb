# Load paths
APP_ROOT = File.dirname(__FILE__)

load_paths = %w[. lib]

load_paths.each do |path|
  $:.unshift(File.join(APP_ROOT, path))
end

require 'rubygems'
require 'bundler/setup'
require 'fileutils'
require 'yaml'
require 'map'

require 'mount_app'
