class CreateMentalPreparations < ActiveRecord::Migration[5.2]
  def change
    create_table :mental_preparations do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.string "mental_preparation_id"
    t.string "integer"
    t.integer "category_id"
    end
  end
end
