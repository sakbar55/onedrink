class Profile < ActiveRecord::Base
  belongs_to :user

  # attachment :profile_image, type: :image
end
