module Generate
  def rails
    Dir.chdir(path) do
      system "rails new #{name} #{database}#{without_test_unit?} --skip-gemfile --skip-bundle"
    end
  end

  private
  def without_test_unit?
    " -T" if test == 'rspec'
  end

  def database
    "-d #{database}"
  end
end
