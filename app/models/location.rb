class Location < ApplicationRecord
  include Filterable

  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :type
  belongs_to :category
  has_one_attached :master_image
  has_many_attached :photos
  has_many :assignments
  has_many :reviews
  has_many :centers, :through => :assignments
=begin

  validates :photos, attached: true, content_type: [:png, :jpg, :jpeg]
  validates :photos, attached: true,
            content_type: ['image/png', 'image/jpg']
=end

  #mount_uploader :image, ImageUploader

  def average_rating
    reviews.count == reviews.average(:star).present? ? reviews.average(:star).round(2) : 0
    # reviews.count == 0 ? 0 : reviews.average(:star).round(2) : 0
  end

end
