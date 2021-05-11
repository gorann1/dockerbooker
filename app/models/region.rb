class Region < ApplicationRecord
  belongs_to :zone
  belongs_to :country
  has_many :centers
  has_many :cities

end
