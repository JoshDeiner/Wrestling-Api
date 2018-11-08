class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "food_habit_id"
    t.integer "category_id"
    end
  end
end
