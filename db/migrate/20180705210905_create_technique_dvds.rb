class CreateTechniqueDvds < ActiveRecord::Migration[5.2]
  def change
    create_table :technique_dvds do |t|
      t.string "title"
      t.string "description"
      t.string "link"
      t.string "author"
      t.string "image"
      t.integer "technique_dvd_id"
      t.integer "category_id"
    end
  end
end
