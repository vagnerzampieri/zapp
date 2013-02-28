module Generate
  def rails
    Dir.chdir(path) do
      system "rails new #{name} #{database.adapter}#{test_unit?} --skip-gemfile --skip-bundle"
    end
  end

  private
  def test_unit?
    " -T" unless test == 'test_unit'
  end

  def database
    "-d #{database.adapter}"
  end
end
