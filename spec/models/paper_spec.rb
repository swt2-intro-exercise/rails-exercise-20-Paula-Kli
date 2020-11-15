require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not be allowed to save a paper without a title" do
    paper = Paper.new(venue: 'Potsdam', year: 2020)
    expect(paper).to_not be_valid
  end
  it "should not be allowed to save a paper without a venue" do
    paper = Paper.new(title: 'Potsdam', year: 2020)
    expect(paper).to_not be_valid
  end
  it "should not be allowed to save a paper without a year" do
    paper = Paper.new(title: 'Potsdam', venue: 'Berlin')
    expect(paper).to_not be_valid
  end

  it "should have a integer as a year" do
    paper = Paper.new(title: 'Potsdam', venue: 'Berlin', year: 20.5)
    expect(paper).to_not be_valid
  end

  it "should have an empty list of authors" do
    paper = Paper.new(title: 'Potsdam',venue: 'Potsdam', year: 2020)
    expect(paper.authors).to be_empty
  end
end
