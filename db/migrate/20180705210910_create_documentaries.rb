class CreateDocumentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :documentaries do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "documentary_id"
    t.integer "category_id"
    end
  end
end
