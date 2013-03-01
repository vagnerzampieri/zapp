require File.expand_path(File.join("..", "boot"), __FILE__)

task default: [:zapp]

desc "Initializer application"

# rake zapp['/vagrant/ruby-tests/rails-apps/example/config_app,yml']
task :zapp, :config_path do |task, params|
  p params[:config_path]

  config = Map.new(YAML.load(File.open(params[:config_path])))
  p config
  app = Zapp.new(config)
  p app
  p app.check_or_create_path
  p app.install_gems
  p app.rails_new
  p app.destroy_files

end
