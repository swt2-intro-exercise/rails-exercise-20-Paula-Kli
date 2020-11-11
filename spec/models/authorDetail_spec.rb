require 'rails_helper'

describe "See details page for author", type: :feature do

  it "Should have a details page" do
    @testAuthor = FactoryBot.create :author
    visit author_path(@testAuthor)
    expect(page).to have_text(@testAuthor.name)
    expect(page).to have_text(@testAuthor.homepage)
    end
end