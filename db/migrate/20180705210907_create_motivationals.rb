class CreateMotivationals < ActiveRecord::Migration[5.2]
  def change
    create_table :motivationals do |t|
    t.string "title"
    t.string "description"
    t.string "author"
    t.string "link"
    t.string "image"
    t.integer "motivational_id"
    t.integer "category_id"
    end
  end
end
