module Gem
  def install_gems
    Dir.chdir(path) do
      valid_groups.each do |group|
        groups[group].each do |gem, values|
          install "#{gem}#{version(values)}"
        end if groups[group]
      end
    end
    gems
  end

  private
  def gems
    Map.new gems
  end

  def groups
    gems.groups
  end

  def valid_groups
    %w[all development test development_test]
  end

  def version gem
    " -v=#{gem['version']}" if gem
  end

  def install gem
    system "gem install #{gem} --verbose --no-ri --no-rdoc"
  end
end
