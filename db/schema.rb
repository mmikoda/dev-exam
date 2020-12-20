ActiveRecord::Schema.define(version: 2020_12_20_061409) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.integer "rent"
    t.string "address"
    t.integer "age"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
