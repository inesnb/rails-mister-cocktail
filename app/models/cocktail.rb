class Cocktail < ApplicationRecord
  has_attachments :photos, maximum: 2
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end


  # has many doses (FAILED - 3)
  # should destroy child doses when destroying self (FAILED - 4)
  # has many ingredients (FAILED - 5
