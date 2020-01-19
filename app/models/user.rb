class User < ApplicationRecord
    has_one_attached :image
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable


end
