require File.expand_path('../boot', __FILE__)

task default: [:init]

desc "Initializer application"

# rake init['/vagrant/ruby-tests/rails-apps/example/config_app,yml']
task :init, :config_path do |task, params|
  p params[:config_path]

  config = Map.new(YAML.load(File.open(params[:config_path])))
  p config
  mount_app = MountApp.new(config)
  p mount_app
  p mount_app.check_or_create_path
  p mount_app.install_gems

end
