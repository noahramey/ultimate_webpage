require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the hash path', {:type => :feature}) do
  it("takes two key value pairs from the user and merges them into one custom hash") do
    visit('/')
    fill_in('key1', :with => "dog")
    fill_in('value1', :with => "Rufus")
    fill_in('key2', :with => "cat")
    fill_in('value2', :with => "Rose")
    fill_in('key3', :with => "dog")
    fill_in('value3', :with => "Rafael")
    fill_in('key4', :with => "horse")
    fill_in('value4', :with => "Rusty")
    click_button('hash_button')
    expect(page).to have_content("dog => Rafael, cat => Rose , horse => Rusty")
  end
end
