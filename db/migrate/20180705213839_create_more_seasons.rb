class CreateMoreSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :more_seasons do |t|
      t.string "title"
      t.string "description"
      t.string "link"
      t.string "author"
      t.string "image"
      t.string "more_seasons_id"
      t.integer "category_id"
    end
  end
end
