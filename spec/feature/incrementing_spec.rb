require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "increment the count" do
  scenario "click the Increment button and see the number increment" do
    visit("/")
    expect(page).to have_content 0
    click_button "Increment"
    expect(page).to have_button('Increment')
    expect(page).to have_content 1
  end
end

feature "decreases the count" do
  scenario "click the Decrement button and see the number decrease" do
    visit("/")
    expect(page).to have_content 0
    click_button "Decrement"
    expect(page).to have_button('Decrement')
    expect(page).to have_content -1
  end
end
