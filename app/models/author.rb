class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_and_belongs_to_many :papers

  def name
    return self.first_name + ' ' + self.last_name
  end
end
