class Cocktail < ApplicationRecord
    STARS_ARRAY = [0,1,2,3,4,5]

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :stars, inclusion: { in: STARS_ARRAY }
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  mount_uploader :photo, PhotoUploader
end
