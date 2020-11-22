require 'rails_helper'

describe "See index page for papers", type: :feature do

  it "should render only papers from a given year when given a parameter" do
    paper = FactoryBot.create :paper
    visit '/papers?year='+ (paper.year+1).to_s
    expect(page).not_to have_text(paper.title)
  end


end