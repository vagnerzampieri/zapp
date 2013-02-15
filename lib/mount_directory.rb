module MountDirectory
  def check_or_create_path
    unless File.exists?(path)
      build_path = ""
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
