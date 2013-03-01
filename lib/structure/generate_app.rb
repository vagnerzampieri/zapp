module Structure
  module GenerateApp
    def rails_new
      Dir.chdir(path) do
        system create_application
      end
    end

    private
    def create_application
      new = "rails new #{name} #{database!}"
      new << skip_gemfile!
      new << skip_test_unit?
      new << skip_git?
      p new
    end

    def database!
      "-d #{database.adapter}"
    end

    def skip_gemfile!
      " --skip-gemfile --skip-bundle"
    end

    def skip_test_unit?
      " -T" unless test == 'test_unit'
    end

    def skip_git?
      " -G" if git.has_key?(:gitignore)
    end
  end
end
