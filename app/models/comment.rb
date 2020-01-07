class Comment < ApplicationRecord
    has_one_attached :image
    validates :content, {presence: true,length:{maximum: 140}}
    # validates :user_id, {presence:true}
end
