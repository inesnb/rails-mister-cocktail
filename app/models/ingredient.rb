class Ingredient < ApplicationRecord
  has_many :doses, dependent: :nullify
  validates :name, presence: true, uniqueness: true

end


  # has a name
  # name cannot be blank
  # name is unique (FAILED - 13)
  # has many doses (FAILED - 14)
  # should not be able to destroy self if has dose children (FAILED - 15)

