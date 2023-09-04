class Prototype < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  with_options presence: true do
  
    validates :catch_copy
    validates :concept
    validates :image
    validates :title
  end
  
  has_many :comments, dependent: :destroy
end
