class Comment < ApplicationRecord
  resourcify
  belongs_to :post
end
