require 'mount_directory'
require 'gem'

class MountApp
  attr_accessor :name, :path, :gems
  include MountDirectory
  include Gem

  def initialize args = {}
    @name = args[:name]
    @path = args[:path]
    @gems = args[:gems]
  end
end
