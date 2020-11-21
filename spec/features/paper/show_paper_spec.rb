require 'rails_helper'

describe "See details page for paper", type: :feature do

  it "Should have a details page" do
    @testPaper = FactoryBot.create :paper
    visit paper_path(@testPaper)
    expect(page).to have_text(@testPaper.title)
    expect(page).to have_text(@testPaper.venue)
    expect(page).to have_text(@testPaper.year)
    expect(page).to have_text(@testPaper.authors[0].name)
  end
end