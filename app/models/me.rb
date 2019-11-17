class Me < ApplicationRecord
    # active storage
    # has_one_attached :image
    #carrirwave
    mount_uploaders :image, ImageUploader
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
end
