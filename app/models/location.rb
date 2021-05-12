class Location < ApplicationRecord
  include Filterable

  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :type
  belongs_to :category
  has_one_attached :master_image
  has_many_attached :new_images
  has_many :assignments
  has_many :centers, :through => :assignments


  #mount_uploader :image, ImageUploader
end
