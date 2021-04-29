class Location < ApplicationRecord
  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :type
  belongs_to :category


end
