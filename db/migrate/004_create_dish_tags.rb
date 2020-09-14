class CreateDishTags < ActiveRecord::Migration[5.2]

    def change
        create_table :dish_tags do |t|
          
            t.belongs_to :dish
            t.belongs_to :tag

        end   
    end
end