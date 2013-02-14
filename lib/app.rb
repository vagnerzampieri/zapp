require 'mount_directory'
require 'gem'
require 'generate'

class App
  attr_accessor :name, :path, :gems, :test, :database
  include MountDirectory
  include Gem
  include Generate

  def initialize args = {}
    @name     = args[:name]
    @path     = args[:path]
    @gems     = args[:gems]
    @test     = args[:test]
    @database = args[:database][:adapter]
  end
end
