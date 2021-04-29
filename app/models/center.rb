class Center < ApplicationRecord
  belongs_to :zone
  belongs_to :country
  belongs_to :region
end
