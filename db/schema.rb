# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_10_080236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "article_coffees", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "coffee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_article_coffees_on_article_id"
    t.index ["coffee_id"], name: "index_article_coffees_on_coffee_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.bigint "user_id", null: false
    t.bigint "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "article_image"
    t.float "rate"
    t.index ["store_id"], name: "index_articles_on_store_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_bookmarks_on_article_id"
    t.index ["user_id", "article_id"], name: "index_bookmarks_on_user_id_and_article_id", unique: true
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "coffees", force: :cascade do |t|
    t.string "producing_area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body", null: false
    t.bigint "user_id", null: false
    t.bigint "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_comments_on_store_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_favorites_on_store_id"
    t.index ["user_id", "store_id"], name: "index_favorites_on_user_id_and_store_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "feature_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_likes_on_article_id"
    t.index ["user_id", "article_id"], name: "index_likes_on_user_id_and_article_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "store_features", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_store_features_on_feature_id"
    t.index ["store_id"], name: "index_store_features_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "tel"
    t.string "closing_day"
    t.time "opening_hours"
    t.time "closing_hours"
    t.bigint "area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "store_image"
    t.index ["area_id"], name: "index_stores_on_area_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.integer "role", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "article_coffees", "articles"
  add_foreign_key "article_coffees", "coffees"
  add_foreign_key "articles", "stores"
  add_foreign_key "articles", "users"
  add_foreign_key "bookmarks", "articles"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "comments", "stores"
  add_foreign_key "comments", "users"
  add_foreign_key "favorites", "stores"
  add_foreign_key "favorites", "users"
  add_foreign_key "likes", "articles"
  add_foreign_key "likes", "users"
  add_foreign_key "store_features", "features"
  add_foreign_key "store_features", "stores"
  add_foreign_key "stores", "areas"
end
