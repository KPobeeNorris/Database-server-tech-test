require 'spec_helper'

feature 'Dbserver' do

  scenario 'should be able to visit the home page' do
      visit '/'
      expect(page.status_code).to eq(200)
    end

  scenario 'should be able to visit home page and port to be 4000' do
    visit '/'
    expect(page.current_url).to eq('http://localhost:4000/')
  end

end
