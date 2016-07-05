require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it("takes parcel dimensionas and weight and returns the cost of shipping") do
    visit('/')
    fill_in('length', :with => "2")
    fill_in('width', :with => "2")
    fill_in('height', :with => "3")
    fill_in('weight', :with => "3")
    click_button('parcel_button')
    expect(page).to have_content('Shipping: $36.00')
  end
end
