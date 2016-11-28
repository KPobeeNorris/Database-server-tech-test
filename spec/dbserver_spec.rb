require 'spec_helper'

feature 'Dbserver' do

  scenario 'should be able to visit the home page' do
    visit '/'
    expect(page.status_code).to eq(200)
  end

  scenario 'should have welcome note on home page' do
    visit '/'
    expect(page).to have_content('Hello dbserver!')
  end

  scenario 'should be able to visit home page and port to be 4000' do
    visit '/'
    expect(page.current_url).to eq('http://localhost:4000/')
  end

end



# scenario 'should have name of cartoon in the url' do
#   visit '/set'
#   session[:cartoon] =
#
#   expect(page.current_url).to eq('http://localhost:4000/')
# end

# describe 'The Dbserver App' do
#   include Rack::Test::Methods
#
#   def app
#     Sinatra::Application
#   end
#
#   it "tests this rack milarky" do
#     get '/'
#     expect(last_response).to be_ok
#     expect(last_response.body).to eq('Hello dbserver!')
#   end
# end
