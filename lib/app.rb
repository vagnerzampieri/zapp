require 'mount_directory'
require 'gem'
require 'generate'

class App
  attr_accessor :name, :path, :gems, :test, :git, :database
  include MountDirectory
  include Gem
  include Generate

  def initialize args = {}
    @name     = args[:name]
    @path     = args[:path]
    @test     = args[:test]
    @git      = args[:git]
    @database = args[:database]
    @gems     = args[:gems]
  end
end
