class City < ApplicationRecord
  belongs_to :region
  has_many :centers
  has_many :locations
end
