class MounDirectory
  attr_accessor :path
  
  def initialize path
    @path = path
  end

  def check_or_create
    unless File.exists?(path)
      path.split('/').each do |p|
        build_path << "/#{p}"
        unless File.exists?(build_path)
          Dir.mkdir(build_path)
        end
      end
    end
    path
  end
end
