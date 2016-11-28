require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application

describe('what the triangle is', {:type => :feature}) do
  it('returns the types of the triangle') do
    visit('/')
    fill_in('side1', :with => 2)
    fill_in('side2', :with => 2)
    fill_in('side3', :with => 3)
    click_button('Check!')
    expect(page).to(have_content('isosceles'))
  end
end
