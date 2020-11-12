require 'rails_helper'

describe "See index page for all authors", type: :feature do
  visit author_path
end