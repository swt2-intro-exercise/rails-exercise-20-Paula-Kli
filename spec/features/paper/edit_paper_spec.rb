require 'rails_helper'

describe "Edit paper should render", type: :feature do

  it "should have a field to select a matching author" do
    @testPaper = FactoryBot.create :paper
    @testAuthor = FactoryBot.create :author
    visit edit_paper_path(@testPaper)
    expect(page).to have_select('paper[author_ids]', type: :hidden)
  end
end
