# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110225030905) do

  create_table "achievements", :force => true do |t|
    t.integer  "rank"
    t.string   "heading"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_posts", :force => true do |t|
    t.string   "title"
    t.text     "post"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "param"
  end

  create_table "comments", :force => true do |t|
    t.integer  "blog_post_id"
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "referrer"
    t.boolean  "approved",     :default => false, :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string  "name"
    t.string  "heading"
    t.text    "description"
    t.integer "rank"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "testimonials", :force => true do |t|
    t.string  "provider_name"
    t.string  "provider_position"
    t.text    "recommendation"
    t.integer "rank"
  end

  create_table "users", :force => true do |t|
    t.string   "login",             :null => false
    t.string   "crypted_password",  :null => false
    t.string   "password_salt",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "persistence_token", :null => false
  end

end
