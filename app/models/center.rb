class Center < ApplicationRecord
  belongs_to :zone
  belongs_to :country
  belongs_to :region
  has_many :assignments
  has_many :locations, :through => :assignments
  #has_many_attached :images
  #validates :images, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }
  #validates :title, presence: true

=begin
  attr_accessor :new_images

  def attach_images
    return if new_images.blank?

    images.attach(new_images)
    self.new_images = []
  end
=end

end
