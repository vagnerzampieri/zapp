require 'mount_directory'
require 'gem'
require 'generate'
require 'remove'

class Zapp
  attr_accessor :name, :path, :application_path, :gems, :test, :git, :rm, :database
  include MountDirectory
  include Gem
  include Generate
  include Remove

  def initialize args = {}
    @name             = args[:name]
    @path             = args[:path]
    @application_path = File.join args[:path], args[:name]
    @test             = args[:test]
    @git              = args[:git]
    @rm               = args[:rm]
    @database         = args[:database]
    @gems             = args[:gems]
  end
end
