class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail_id && :ingredient_id, uniqueness: true
  validates :description, presence: true
  # has_many :ingredients
end

