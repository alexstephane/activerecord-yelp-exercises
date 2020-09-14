

restaurant_names = ["Mcdonals","Wendy's","BK","Subway", 
    "In N Out","Panda Express","Cave","Chipotle",
    "Taco Bell","KFC",
    "Arby's","Popeyes",
    "Checkers", "What a Burger","Papa John's",
    "Pizza Hut","Dominos","DQ","Ihop","Denny's"
]

dishes=["dish_1","dish_2","dish_3","dish_4",
"dish_5","dish_6","dish_7","dish_8","dish_9","dish_10"]

tags=["spicy","vegetarian","beef","pork",
"gluten free","cheap","expencive","soy free","vegan",
"delicious"]

restaurant_names.each do |restaurant|
    Restaurant.create(name:restaurant)
end

Restaurant.all.each do |restaurant|
    dishes.each do |dish|
         Dish.create(name:dish,restaurant: restaurant)
    end
end

tag_array = tags.map do |tag|
    Tag.create(name:tag)
end

Dish.all.each do |dish|
    three_tags = tag_array.sample(3)
    three_tags.each do |tag| 
        
       dish.tags.append(tag)
    end

end