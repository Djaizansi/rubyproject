class Location < ApplicationRecord
    belongs_to :user
    belongs_to :medium, optional: true
end