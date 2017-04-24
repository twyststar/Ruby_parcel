require('capybara/rspec')
require('./app.rb')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('shipping info path',{:type => :feature}) do
  it('will return shipping cost for input') do
    visit('/')
    fill_in('height', :with=>'20')
    fill_in('width', :with=>'10')
    fill_in('depth', :with=>'10')
    fill_in('weight', :with=>'5')
    fill_in('distance', :with=>'5')
    select ('Standard')
    click_on('Submit')
    expect(page).to have_content('51')
  end
end
