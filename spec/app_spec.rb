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

  context '#database' do
    it '#adapter' do
      expect(@app.database.adapter).to eql 'postgresql'
    end

    it '#user' do
      expect(@app.database.user).to eql 'postgres'
    end

    it '#password' do
      expect(@app.database.password).to eql 'postgres'
    end
  end

  describe '#gems' do
    context '#groups' do
      it '#all' do
        expect(@app.gems.groups.all).not_to be_empty
      end
    end

    it '#all'
    it '#assets'
    it '#development'
    it '#test'
    it '#development_test'
    it '#production'
  end
end
