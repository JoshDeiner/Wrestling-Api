class CreateMemorableWrestlers < ActiveRecord::Migration[5.2]
  def change
    create_table :memorable_wrestlers do |t|
    t.string "name"
    t.string "bio"
    t.string "highlights"
    t.integer "memorable_wrestler_id"
    t.integer "category_id"
    end
  end
end
