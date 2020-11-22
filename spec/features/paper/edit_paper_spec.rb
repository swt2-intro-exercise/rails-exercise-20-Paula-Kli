require 'rails_helper'

describe "Edit paper should render", type: :feature do

  it "should have a field to select a matching author" do
    @testPaper = FactoryBot.create :paper
    @testAuthor = FactoryBot.create :author
    visit edit_author_path(@testPaper)
    page.select @testAuthor.name, from: 'Author'
  end
end
