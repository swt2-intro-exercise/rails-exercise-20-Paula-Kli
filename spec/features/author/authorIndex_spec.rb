require 'rails_helper'

describe "See index page for all authors", type: :feature do
  it "should have a table with Name and homepage" do
    visit authors_path
    expect(page).to have_text("Name")
    expect(page).to have_text("Homepage")
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have for every author in the listing a link to show and edit" do
    @testAuthor = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Show' , href: author_path(@testAuthor)
    expect(page).to have_link 'Edit' , href: edit_author_path(@testAuthor)
  end
end