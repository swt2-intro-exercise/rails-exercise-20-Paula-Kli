require 'rails_helper'

describe "New author page", type: :feature do

it "should render without error" do
  visit new_author_path
end

it "should have text inputs for an author's first name, last name, and homepage" do
  visit new_author_path
  # these are the standard names given to inputs by the form builder
  expect(page).to have_field('author[first_name]')
  expect(page).to have_field('author[last_name]')
  expect(page).to have_field('author[homepage]')
end
it "when a user enters an author that one should be found in the database" do
  visit new_author_path
  page.fill_in 'author[first_name]', with: 'Edsger'
  page.fill_in 'author[last_name]', with: 'Dijkstra'
  page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'
  find('input[type="submit"]').click
end

it "should render an error message when entering an author without a last name" do
  visit new_author_path
  page.fill_in 'author[first_name]', with: 'Edsger'
  page.fill_in 'author[homepage]', with: 'test.com'
  find('input[type="submit"]').click
  expect(page).to have_text("Last name can't be blank")
  expect(page).to have_text("error")
end


end