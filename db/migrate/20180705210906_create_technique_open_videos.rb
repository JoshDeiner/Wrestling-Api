class CreateTechniqueOpenVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :technique_open_videos do |t|
      t.string "title"
      t.string "description"
      t.string "link"
      t.string "author"
      t.string "image"
      t.integer "technique_open_videos_id"
      t.integer "category_id"
    end
  end
end
