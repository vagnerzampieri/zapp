module Structure
  module Remove
    def destroy_files
      Dir.chdir(application_path) do
        rm.each do |file|
          system "rm #{check_file(file)}"
        end
      end
    end

    private
    def check_file file
      if File.directory?("#{Dir.pwd}/#{file}")
        return "-r #{file}"
      elsif File.file?("#{Dir.pwd}/#{file}")
        return file
      end
    end
  end
end
