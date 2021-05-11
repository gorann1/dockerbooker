class Center < ApplicationRecord
  belongs_to :zone
  belongs_to :country
  belongs_to :region
  has_many :assignments
  has_many :locations, :through => :assignments


end
