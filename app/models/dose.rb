class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :description, presence: true
  # has_many :ingredients
end

