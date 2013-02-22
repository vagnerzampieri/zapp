require File.expand_path(File.join("..", "..", "boot"), __FILE__)

def fixture_config_app
  Map.new(
    YAML.load(
      File.open(
        File.join(
          "#{Dir.pwd}", "example", "config_app.yml"
        )
      )
    )
  )
end
