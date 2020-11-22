require 'rails_helper'

describe "Edit paper should render", type: :feature do

  it "should have a field to select a matching author" do
    @testPaper = FactoryBot.create :paper
    @testAuthor = FactoryBot.create :author
    visit edit_paper_path(@testPaper)
    select @testAuthor.name, from: 'paper[author_ids][]', match: :first
  end
end
