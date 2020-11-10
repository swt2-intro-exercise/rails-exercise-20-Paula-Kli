require 'rails_helper'

describe "New author page", type: :feature do

  it "should have attributes and a concatinated attribute name" do
    author = Author.new('Alan', 'Turing', 'example.de')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('example.de')
    expect(author.name).to eq('Alan Turing')
  end

end