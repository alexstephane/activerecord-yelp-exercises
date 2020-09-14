class Restaurant < ActiveRecord::Base
    has_many :dishes

    def self.mcdonalds
        Restaurant.find_by(name: "McDonalds")
    end

    def self.tenth 
        Restaurant.find(9)
    end

    def self.with_long_names 
        Restaurant.where("name.size> 12")

    end

end
