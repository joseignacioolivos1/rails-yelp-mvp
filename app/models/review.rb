class Review < ApplicationRecord
   has_many :reviews, dependent: :destroy
   validates :content, presence: true
   validates :restaurant, presence: true
   validates :category,presence:true

   validates :category, inclusion: { in: ( italian japanese french belgian),
    message: "%{value} is not a valid cate" }
end
