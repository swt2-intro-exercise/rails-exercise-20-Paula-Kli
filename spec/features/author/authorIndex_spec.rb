require 'rails_helper'

describe "See index page for all authors", type: :feature do
  it "should have a table with Name and homepage" do
    visit authors_path
    expect(page).to have_text("Name")
    expect(page).to have_text("Homepage")
    expect(page).to have_link 'New', href: new_author_path
  end

end