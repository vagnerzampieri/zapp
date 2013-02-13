require File.expand_path('../boot', __FILE__)

task default: [:init]

desc "Initializer application"

# rake init[$HOME]
task :init, :config_path do |task, params|
  p params[:config_path]

  config = Map.new(YAML.load(File.open(params[:config_path])))
  p config
  p config.create_path
  mount_directory = MounDirectory.new(config.create_path)
  p = mount_directory.check_or_create

end
