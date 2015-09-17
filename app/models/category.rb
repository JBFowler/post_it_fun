class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories
  
  validates :name, uniqueness: true, presence: true, length: {minimum: 4}  
end