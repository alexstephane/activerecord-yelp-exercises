class Restaurant < ActiveRecord::Base
    has_many :dishes

    def self.mcdonalds
        Restaurant.find_by(name: "McDonalds")
    end

    def self.tenth 
        Restaurant.find(9)
    end

    def self.with_long_names 
        Restaurant.where("name.size > 12")

    end

    def self.max_dishes

        # [0,0,0,0,1,1,1,1,2,2,2,2,2,3,3,3,3] #what number comes up most?

        

        dish_array = Dish.all.map{|dish| dish.restaurant}

        dish_array.uniq.max_by{ |restaurant|
            temp.count(restaurant)
        }

        # freq = temp.inject(Hash.new(0)){ |k, v|
        #     k[v] += 1
        # }


        #Dish.order("restaurant_id")
        # Dish.group("restaurant_id").order(:count)

    end

    def self.focused

        #Dish.all.map{|dish| dish.restaurant} is the same as:
        # Dish.pluck("restaurant")
        Dish.group("restaurant").count

    end

end
