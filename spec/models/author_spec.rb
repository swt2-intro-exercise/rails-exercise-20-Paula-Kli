require 'rails_helper'

describe "New author page", type: :feature do

  it "should have attributes and a concatinated attribute name" do
    author = Author.new(first_name:'Alan', last_name:'Turing', homepage:'example.de')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('example.de')
    expect(author.name).to eq('Alan Turing')
  end

  it 'should not be allowed to create an author without a lastname' do
  author = Author.new(first_name:'Alan', homepage: 'example.com')
  expect(author).to_not be_valid
  end

end