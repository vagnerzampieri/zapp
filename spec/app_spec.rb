require 'app'
require 'spec_helper'

describe App do
  before do
    @app = App.new(fixture_config_app)
  end

  it '#name' do
    expect(@app.name).to eql 'name_application'
  end

  it '#path' do
    expect(@app.path).to eql '/vagrant/apps'
  end

  it '#test' do
    expect(@app.test).to eql 'rspec'
  end

  it '#git' do
    expect(@app.git.gitignore).to eql ['*.swo', '*.swp']
  end

  it '#database' do
    expect(@app.database.adapter).to eql 'postgresql'
    expect(@app.database.user).to eql 'postgres'
    expect(@app.database.password).to eql 'postgres'
  end
end
