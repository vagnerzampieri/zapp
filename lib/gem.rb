module Gem
  def install_gems
    gems.groups.all.each do |gem, values|
      p install "#{gem}#{version(values)}"
    end
  end

  private
  def gems
    Map.new gems
  end

  def version gem
    " -v=#{gem['version']}" if gem
  end

  def install gem
    system "gem install #{gem} --no-ri --no-rdoc"
  end
end
