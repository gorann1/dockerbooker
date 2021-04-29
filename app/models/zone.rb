class Zone < ApplicationRecord
  has_many :countries
  has_many :regions
  has_many :centers

end
