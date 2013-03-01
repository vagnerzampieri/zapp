require 'zapp'
require 'spec_helper'

describe Zapp do
  before do
    @app = Zapp.new(fixture_config_app)
  end

  it '#name' do
    #expect(@app.name).to eql 'name_application'
    expect(@app.name).to eql 'name_applications'
  end

  it '#path' do
    #expect(@app.path).to eql '/vagrant/apps'
    expect(@app.path).to eql "/home/vagner/Projects/rails/zapp_applications"
  end

  it '#application_path' do
    #expect(@app.application_path).to eql '/vagrant/apps/name_application'
    expect(@app.application_path).to eql "/home/vagner/Projects/rails/zapp_applications/name_applications"
  end

  it '#test' do
    expect(@app.test).to eql 'rspec'
  end

  it '#git' do
    expect(@app.git.gitignore).to have(2).items
  end

  it '#rm' do
    expect(@app.rm).to have(4).items
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
        expect(@app.gems.groups.all).to have_key(:rails)
      end
    end

    it '#assets'
    it '#development'
    it '#test'
    it '#development_test'
    it '#production'
  end
end
