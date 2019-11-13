class Me < ApplicationRecord
    # mount_uploader :image, ImageUploader
   devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
end
