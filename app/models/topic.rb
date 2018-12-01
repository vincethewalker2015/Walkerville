class Topic < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5}
  validates :description, presence: true, length: {maximum: 250}
  
  mount_uploader :picture, PictureUploader
  
  # Validates the size of and Uploaded image
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "Image file size should be less than 5MB")
    end
  end
  
end