require 'spec_helper'

describe App do
  before do
    @app = App.new(
      name: 'name_application', 
      path: '/vagrant/apps', 
      test: 'rspec',
      gems: {
        groups: {
          all: {
            rails: {
              version: '3.2.12'
            },
            haml: {}
          }
        } 
      }, 
      database: {
        adapter: 'postgresql'
      }
    )
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
end
