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
  def groups
    gems.groups
  end

  def valid_groups
    %w[all assets development test development_test production]
  end

  def version gem
    " -v=#{gem['version']}" if gem
  end

  def install gem
    system "gem install #{gem} --local --verbose --no-ri --no-rdoc"
  end
end
