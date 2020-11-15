require 'rails_helper'

describe "New author page", type: :feature do

  it "should render without error" do
    visit new_paper_path
  end

  it "should have text inputs for a papers title, venue and year" do
    visit new_paper_path
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end
  it "when a user enters a paper that one should be saved into the database" do
    visit new_paper_path
    page.fill_in 'paper[title]', with: 'MyCoolPaper'
    page.fill_in 'paper[venue]', with: 'Potsdam'
    page.fill_in 'paper[year]', with: '2020'
    find('input[type="submit"]').click
  end

end
