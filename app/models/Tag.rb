class Tag < ActiveRecord::Base

    has_many :dishes, through: :dish_tags
    has_many :dish_tags
end