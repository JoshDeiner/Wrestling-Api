class CreateSpecialMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :special_matches do |t|
      t.string "description"
      t.string "link"
      t.string "image"
      t.integer "match_id"
      t.string "title"
      t.integer "category_id"
      t.integer "checked_out_count"
    end
  end
end
