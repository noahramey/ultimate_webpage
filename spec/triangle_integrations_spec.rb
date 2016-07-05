require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it("takes three side lengths from the user and return the type of triangle created from joining the sides") do
    visit('/')
    fill_in('side1', :with => "2")
    fill_in('side2', :with => "2")
    fill_in('side3', :with => "3")
    click_button('triangle_button')
    expect(page).to have_content('You are an isosceles triangle!')
  end
end
