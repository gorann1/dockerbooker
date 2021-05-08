class Location < ApplicationRecord
  include Filterable

  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :type
  belongs_to :category
  has_one_attached :master_image

  #mount_uploader :image, ImageUploader
end
