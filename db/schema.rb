ActiveRecord::Schema[7.0].define(version: 2022_12_17_094001) do
  create_table "todolists", force: :cascade do |t|
    t.string "Tasks"
    t.string "Priority"
    t.integer "Urgency"
    t.boolean "Status"
    t.string "Category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
