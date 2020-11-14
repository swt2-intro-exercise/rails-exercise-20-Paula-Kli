require 'rails_helper'

describe "Edit author should render", type: :feature do

  it "should render without error" do
    @testAuthor = FactoryBot.create :author
    visit edit_author_path(@testAuthor)
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    @testAuthor = FactoryBot.create :author
    visit edit_author_path(@testAuthor)
    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end
  it "when a user updates an author this one should be stored in the database" do
    @testAuthor = FactoryBot.create :author
    visit edit_author_path(@testAuthor)
    page.fill_in 'author[first_name]', with: 'Edsger'
    page.fill_in 'author[last_name]', with: 'Dijkstra'
    page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'
    find('input[type="submit"]').click
  end

  it "should render an error message when entering an author without a last name" do
    @testAuthor = FactoryBot.create :author
    visit edit_author_path(@testAuthor)
    page.fill_in 'author[first_name]', with: 'Edsger'
    page.fill_in 'author[last_name]' , with: ''
    page.fill_in 'author[homepage]', with: 'test.com'
    find('input[type="submit"]').click
    expect(page).to have_text("Last name can't be blank")
    expect(page).to have_text("error")
  end


end