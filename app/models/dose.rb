class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
  validates :description, presence: true
end


# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] couples should be unique

#  has a description (FAILED - 6)
#   description cannot be blank (FAILED - 7)
#   belongs to a cocktail (FAILED - 8)
#   belongs to an ingredient (FAILED - 9)
#   cocktail cannot be blank (FAILED - 10)
#   ingredient cannot be blank (FAILED - 11)
#   is unique for a given cocktail/ingredient couple (FAILED - 12)
