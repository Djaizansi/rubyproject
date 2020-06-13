class Category < ApplicationRecord
  resourcify
  has_and_belongs_to_many :posts
end
