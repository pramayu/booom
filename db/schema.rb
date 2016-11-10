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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161110073806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aeplugins", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "akusukas", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["user_id"], name: "index_akusukas_on_user_id", using: :btree
  end

  create_table "allskills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vacancy_id"
    t.index ["skill_id"], name: "index_allskills_on_skill_id", using: :btree
    t.index ["user_id"], name: "index_allskills_on_user_id", using: :btree
  end

  create_table "brokes", force: :cascade do |t|
    t.string   "resources"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.index ["code_id"], name: "index_brokes_on_code_id", using: :btree
    t.index ["font_id"], name: "index_brokes_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_brokes_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_brokes_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_brokes_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_brokes_on_videofx_id", using: :btree
  end

  create_table "browsers", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "canopens", force: :cascade do |t|
    t.integer  "softopen3d_id"
    t.integer  "t3d_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["softopen3d_id"], name: "index_canopens_on_softopen3d_id", using: :btree
    t.index ["t3d_id"], name: "index_canopens_on_t3d_id", using: :btree
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.datetime "purchased_at"
    t.integer  "user_id"
    t.string   "status",       default: "failed"
    t.index ["user_id"], name: "index_carts_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "to_item"
    t.string   "slug"
    t.index ["name"], name: "index_categories_on_name", using: :btree
    t.index ["slug"], name: "index_categories_on_slug", using: :btree
  end

  create_table "categorydetails", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["category_id"], name: "index_categorydetails_on_category_id", using: :btree
    t.index ["subcategory_id"], name: "index_categorydetails_on_subcategory_id", using: :btree
  end

  create_table "code_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "codes", force: :cascade do |t|
    t.string   "name",          limit: 150
    t.text     "description"
    t.integer  "category_id"
    t.integer  "dependency_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "agree",                     default: false
    t.string   "slug"
    t.string   "url_demo"
    t.integer  "user_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "codesub_id"
    t.string   "video_demo"
    t.decimal  "price_ext"
    t.integer  "team_id"
    t.boolean  "reject",                    default: false
    t.decimal  "average_rate"
    t.integer  "sell",                      default: 0
    t.index ["agree"], name: "index_codes_on_agree", using: :btree
    t.index ["category_id"], name: "index_codes_on_category_id", using: :btree
    t.index ["codesub_id"], name: "index_codes_on_codesub_id", using: :btree
    t.index ["dependency_id"], name: "index_codes_on_dependency_id", using: :btree
    t.index ["name"], name: "index_codes_on_name", using: :btree
    t.index ["price"], name: "index_codes_on_price", using: :btree
    t.index ["team_id"], name: "index_codes_on_team_id", using: :btree
    t.index ["user_id"], name: "index_codes_on_user_id", using: :btree
  end

  create_table "codesubs", force: :cascade do |t|
    t.string   "name"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subcategory_id"], name: "index_codesubs_on_subcategory_id", using: :btree
  end

  create_table "cofiles", force: :cascade do |t|
    t.string   "coke"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_cofiles_on_course_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.integer  "course_id"
    t.index ["code_id"], name: "index_comments_on_code_id", using: :btree
    t.index ["course_id"], name: "index_comments_on_course_id", using: :btree
    t.index ["font_id"], name: "index_comments_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_comments_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_comments_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_comments_on_theme_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
    t.index ["videofx_id"], name: "index_comments_on_videofx_id", using: :btree
  end

  create_table "compatibles", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "abbreviation", limit: 10
  end

  create_table "course_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "agree",                   default: false
    t.string   "slug"
    t.string   "vi_length",    limit: 10
    t.string   "skill_level",  limit: 20
    t.integer  "user_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "language_id"
    t.decimal  "price_ext"
    t.integer  "team_id"
    t.boolean  "reject",                  default: false
    t.decimal  "average_rate"
    t.integer  "sell",                    default: 0
    t.index ["agree"], name: "index_courses_on_agree", using: :btree
    t.index ["category_id"], name: "index_courses_on_category_id", using: :btree
    t.index ["language_id"], name: "index_courses_on_language_id", using: :btree
    t.index ["name"], name: "index_courses_on_name", using: :btree
    t.index ["price"], name: "index_courses_on_price", using: :btree
    t.index ["team_id"], name: "index_courses_on_team_id", using: :btree
    t.index ["user_id"], name: "index_courses_on_user_id", using: :btree
  end

  create_table "databrowsers", force: :cascade do |t|
    t.integer  "browser_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.index ["browser_id"], name: "index_databrowsers_on_browser_id", using: :btree
    t.index ["code_id"], name: "index_databrowsers_on_code_id", using: :btree
    t.index ["theme_id"], name: "index_databrowsers_on_theme_id", using: :btree
  end

  create_table "datacompatibles", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "compatible_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "code_id"
    t.index ["code_id"], name: "index_datacompatibles_on_code_id", using: :btree
    t.index ["compatible_id"], name: "index_datacompatibles_on_compatible_id", using: :btree
    t.index ["theme_id"], name: "index_datacompatibles_on_theme_id", using: :btree
  end

  create_table "dataincludes", force: :cascade do |t|
    t.integer  "include_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.index ["code_id"], name: "index_dataincludes_on_code_id", using: :btree
    t.index ["font_id"], name: "index_dataincludes_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_dataincludes_on_graphic_id", using: :btree
    t.index ["include_id"], name: "index_dataincludes_on_include_id", using: :btree
    t.index ["t3d_id"], name: "index_dataincludes_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_dataincludes_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_dataincludes_on_videofx_id", using: :btree
  end

  create_table "dataositems", force: :cascade do |t|
    t.integer  "t3d_id"
    t.integer  "ositem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ositem_id"], name: "index_dataositems_on_ositem_id", using: :btree
    t.index ["t3d_id"], name: "index_dataositems_on_t3d_id", using: :btree
  end

  create_table "datasubcategories", force: :cascade do |t|
    t.integer  "subcategory_id"
    t.integer  "theme_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "course_id"
    t.index ["code_id"], name: "index_datasubcategories_on_code_id", using: :btree
    t.index ["course_id"], name: "index_datasubcategories_on_course_id", using: :btree
    t.index ["graphic_id"], name: "index_datasubcategories_on_graphic_id", using: :btree
    t.index ["subcategory_id"], name: "index_datasubcategories_on_subcategory_id", using: :btree
    t.index ["t3d_id"], name: "index_datasubcategories_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_datasubcategories_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_datasubcategories_on_videofx_id", using: :btree
  end

  create_table "dependencies", force: :cascade do |t|
    t.string   "name",        limit: 30
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_dependencies_on_category_id", using: :btree
  end

  create_table "diasukas", force: :cascade do |t|
    t.integer  "akusuka_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.integer  "course_id"
    t.integer  "t3d_id"
    t.index ["akusuka_id"], name: "index_diasukas_on_akusuka_id", using: :btree
    t.index ["code_id"], name: "index_diasukas_on_code_id", using: :btree
    t.index ["course_id"], name: "index_diasukas_on_course_id", using: :btree
    t.index ["font_id"], name: "index_diasukas_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_diasukas_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_diasukas_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_diasukas_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_diasukas_on_videofx_id", using: :btree
  end

  create_table "encodes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "following_id"
    t.integer  "follower_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["follower_id"], name: "index_follows_on_follower_id", using: :btree
    t.index ["following_id", "follower_id"], name: "index_follows_on_following_id_and_follower_id", unique: true, using: :btree
    t.index ["following_id"], name: "index_follows_on_following_id", using: :btree
  end

  create_table "font_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fontindustries", force: :cascade do |t|
    t.integer  "industry_id"
    t.integer  "font_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["font_id"], name: "index_fontindustries_on_font_id", using: :btree
    t.index ["industry_id"], name: "index_fontindustries_on_industry_id", using: :btree
  end

  create_table "fonts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "agree",                   default: false
    t.string   "slug"
    t.string   "file_size",    limit: 20
    t.string   "vector",       limit: 10
    t.integer  "user_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.decimal  "price_ext"
    t.integer  "team_id"
    t.boolean  "reject",                  default: false
    t.decimal  "average_rate"
    t.integer  "sell",                    default: 0
    t.index ["agree"], name: "index_fonts_on_agree", using: :btree
    t.index ["category_id"], name: "index_fonts_on_category_id", using: :btree
    t.index ["name"], name: "index_fonts_on_name", using: :btree
    t.index ["price"], name: "index_fonts_on_price", using: :btree
    t.index ["team_id"], name: "index_fonts_on_team_id", using: :btree
    t.index ["user_id"], name: "index_fonts_on_user_id", using: :btree
  end

  create_table "framerates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freeitems", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "code_id"
    t.integer  "t3d_id"
    t.integer  "graphic_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_id"], name: "index_freeitems_on_code_id", using: :btree
    t.index ["course_id"], name: "index_freeitems_on_course_id", using: :btree
    t.index ["font_id"], name: "index_freeitems_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_freeitems_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_freeitems_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_freeitems_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_freeitems_on_videofx_id", using: :btree
  end

  create_table "freepis", force: :cascade do |t|
    t.string   "cacaca"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_freepis_on_course_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 40
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "geometries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphic_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphics", force: :cascade do |t|
    t.string   "name",         limit: 150
    t.string   "description"
    t.integer  "category_id"
    t.integer  "softopen_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "agree",                    default: false
    t.string   "slug"
    t.string   "url_demo"
    t.string   "video_demo"
    t.integer  "user_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.decimal  "price_ext"
    t.integer  "team_id"
    t.boolean  "reject",                   default: false
    t.decimal  "average_rate"
    t.integer  "sell",                     default: 0
    t.index ["agree"], name: "index_graphics_on_agree", using: :btree
    t.index ["category_id"], name: "index_graphics_on_category_id", using: :btree
    t.index ["name"], name: "index_graphics_on_name", using: :btree
    t.index ["price"], name: "index_graphics_on_price", using: :btree
    t.index ["softopen_id"], name: "index_graphics_on_softopen_id", using: :btree
    t.index ["team_id"], name: "index_graphics_on_team_id", using: :btree
    t.index ["user_id"], name: "index_graphics_on_user_id", using: :btree
  end

  create_table "graphindustries", force: :cascade do |t|
    t.integer  "graphic_id"
    t.integer  "industry_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["graphic_id"], name: "index_graphindustries_on_graphic_id", using: :btree
    t.index ["industry_id"], name: "index_graphindustries_on_industry_id", using: :btree
  end

  create_table "headsecs", force: :cascade do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_headsecs_on_course_id", using: :btree
  end

  create_table "includes", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "latars", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "headsec_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["headsec_id"], name: "index_lectures_on_headsec_id", using: :btree
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "cart_id"
    t.integer  "theme_id"
    t.decimal  "unit_price"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "license"
    t.boolean  "support",    default: false
    t.integer  "code_id"
    t.integer  "font_id"
    t.integer  "course_id"
    t.integer  "t3d_id"
    t.integer  "graphic_id"
    t.integer  "videofx_id"
    t.string   "who_have"
    t.index ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
    t.index ["code_id"], name: "index_line_items_on_code_id", using: :btree
    t.index ["course_id"], name: "index_line_items_on_course_id", using: :btree
    t.index ["font_id"], name: "index_line_items_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_line_items_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_line_items_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_line_items_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_line_items_on_videofx_id", using: :btree
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.string  "unsubscriber_type"
    t.integer "unsubscriber_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
    t.index ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree
  end

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.string   "sender_type"
    t.integer  "sender_id"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.string   "notified_object_type"
    t.integer  "notified_object_id"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
    t.index ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
    t.index ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
    t.index ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
    t.index ["type"], name: "index_mailboxer_notifications_on_type", using: :btree
  end

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.string   "receiver_type"
    t.integer  "receiver_id"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.boolean  "is_delivered",               default: false
    t.string   "delivery_method"
    t.string   "message_id"
    t.index ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
    t.index ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree
  end

  create_table "maintoitems", force: :cascade do |t|
    t.integer  "include_id"
    t.integer  "toitem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["include_id"], name: "index_maintoitems_on_include_id", using: :btree
    t.index ["toitem_id"], name: "index_maintoitems_on_toitem_id", using: :btree
  end

  create_table "memos", force: :cascade do |t|
    t.string   "content",    limit: 200
    t.integer  "note_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["note_id"], name: "index_memos_on_note_id", using: :btree
  end

  create_table "messagereviewers", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_messagereviewers_on_team_id", using: :btree
    t.index ["user_id"], name: "index_messagereviewers_on_user_id", using: :btree
  end

  create_table "modelsubs", force: :cascade do |t|
    t.string   "name"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subcategory_id"], name: "index_modelsubs_on_subcategory_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title",      limit: 150
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "team_id"
    t.index ["team_id"], name: "index_notes_on_team_id", using: :btree
    t.index ["user_id"], name: "index_notes_on_user_id", using: :btree
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "notified_by_id"
    t.integer  "theme_id"
    t.integer  "identifier"
    t.string   "notice_type"
    t.boolean  "read",           default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.integer  "course_id"
    t.integer  "line_item_id"
    t.index ["code_id"], name: "index_notifications_on_code_id", using: :btree
    t.index ["course_id"], name: "index_notifications_on_course_id", using: :btree
    t.index ["font_id"], name: "index_notifications_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_notifications_on_graphic_id", using: :btree
    t.index ["line_item_id"], name: "index_notifications_on_line_item_id", using: :btree
    t.index ["notified_by_id"], name: "index_notifications_on_notified_by_id", using: :btree
    t.index ["t3d_id"], name: "index_notifications_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_notifications_on_theme_id", using: :btree
    t.index ["user_id"], name: "index_notifications_on_user_id", using: :btree
    t.index ["videofx_id"], name: "index_notifications_on_videofx_id", using: :btree
  end

  create_table "ositems", force: :cascade do |t|
    t.string   "name",       limit: 20
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "ourstores", force: :cascade do |t|
    t.string   "header"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "website"
    t.index ["user_id"], name: "index_ourstores_on_user_id", using: :btree
  end

  create_table "payment_noties", force: :cascade do |t|
    t.text     "params"
    t.integer  "cart_id"
    t.string   "status"
    t.string   "transaction_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["cart_id"], name: "index_payment_noties_on_cart_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "theme_id"
    t.integer  "code_id"
    t.integer  "font_id"
    t.integer  "videofx_id"
    t.integer  "course_id"
    t.integer  "t3d_id"
    t.integer  "graphic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_id"], name: "index_reviews_on_code_id", using: :btree
    t.index ["course_id"], name: "index_reviews_on_course_id", using: :btree
    t.index ["font_id"], name: "index_reviews_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_reviews_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_reviews_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_reviews_on_theme_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
    t.index ["videofx_id"], name: "index_reviews_on_videofx_id", using: :btree
  end

  create_table "revrests", force: :cascade do |t|
    t.text     "content"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "font_id"
    t.integer  "t3d_id"
    t.integer  "course_id"
    t.integer  "videofx_id"
    t.index ["code_id"], name: "index_revrests_on_code_id", using: :btree
    t.index ["course_id"], name: "index_revrests_on_course_id", using: :btree
    t.index ["font_id"], name: "index_revrests_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_revrests_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_revrests_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_revrests_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_revrests_on_videofx_id", using: :btree
  end

  create_table "screenshots", force: :cascade do |t|
    t.string   "screenshot"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.index ["code_id"], name: "index_screenshots_on_code_id", using: :btree
    t.index ["font_id"], name: "index_screenshots_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_screenshots_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_screenshots_on_t3d_id", using: :btree
    t.index ["theme_id"], name: "index_screenshots_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_screenshots_on_videofx_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_networks", force: :cascade do |t|
    t.string   "behance"
    t.string   "deviant"
    t.string   "digg"
    t.string   "facebook"
    t.string   "dribbble"
    t.string   "flickr"
    t.string   "github"
    t.string   "linkedin"
    t.string   "youtube"
    t.string   "twitter"
    t.string   "tumblr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_social_networks_on_user_id", using: :btree
  end

  create_table "softopen3ds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "softopens", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id", using: :btree
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "slug"
    t.index ["name"], name: "index_subcategories_on_name", using: :btree
  end

  create_table "t3d_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t3ds", force: :cascade do |t|
    t.string   "name",               limit: 150
    t.string   "description"
    t.integer  "category_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "agree",                          default: false
    t.string   "slug"
    t.string   "url_demo"
    t.string   "video_demo"
    t.integer  "user_id"
    t.string   "animated",           limit: 10
    t.string   "low_poly",           limit: 10
    t.string   "material",           limit: 10
    t.string   "rigged",             limit: 10
    t.string   "texture",            limit: 10
    t.string   "uv_mapped",          limit: 10
    t.string   "unwrapped_uvs",      limit: 10
    t.string   "bitmap_texture",     limit: 10
    t.string   "procedural_texture", limit: 10
    t.string   "tileable",           limit: 10
    t.string   "layered",            limit: 10
    t.string   "resolution",         limit: 20
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "polygons_count",     limit: 20
    t.string   "vertices_count",     limit: 20
    t.integer  "modelsub_id"
    t.integer  "genre_id"
    t.integer  "geometry_id"
    t.decimal  "price_ext"
    t.integer  "team_id"
    t.boolean  "reject",                         default: false
    t.decimal  "average_rate"
    t.integer  "sell",                           default: 0
    t.index ["agree"], name: "index_t3ds_on_agree", using: :btree
    t.index ["category_id"], name: "index_t3ds_on_category_id", using: :btree
    t.index ["genre_id"], name: "index_t3ds_on_genre_id", using: :btree
    t.index ["geometry_id"], name: "index_t3ds_on_geometry_id", using: :btree
    t.index ["modelsub_id"], name: "index_t3ds_on_modelsub_id", using: :btree
    t.index ["name"], name: "index_t3ds_on_name", using: :btree
    t.index ["price"], name: "index_t3ds_on_price", using: :btree
    t.index ["team_id"], name: "index_t3ds_on_team_id", using: :btree
    t.index ["user_id"], name: "index_t3ds_on_user_id", using: :btree
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "code_id"
    t.integer  "graphic_id"
    t.integer  "t3d_id"
    t.integer  "videofx_id"
    t.integer  "font_id"
    t.integer  "course_id"
    t.index ["code_id"], name: "index_taggings_on_code_id", using: :btree
    t.index ["course_id"], name: "index_taggings_on_course_id", using: :btree
    t.index ["font_id"], name: "index_taggings_on_font_id", using: :btree
    t.index ["graphic_id"], name: "index_taggings_on_graphic_id", using: :btree
    t.index ["t3d_id"], name: "index_taggings_on_t3d_id", using: :btree
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
    t.index ["theme_id"], name: "index_taggings_on_theme_id", using: :btree
    t.index ["videofx_id"], name: "index_taggings_on_videofx_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 40
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["name"], name: "index_tags_on_name", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theme_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name",          limit: 150
    t.text     "description"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "category_id"
    t.string   "column"
    t.string   "layout"
    t.integer  "dependency_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "aggree"
    t.string   "slug"
    t.string   "url_demo"
    t.integer  "user_id"
    t.integer  "team_id"
    t.decimal  "price_ext"
    t.boolean  "reject",                    default: false
    t.decimal  "average_rate"
    t.integer  "sell",                      default: 0
    t.index ["aggree"], name: "index_themes_on_aggree", using: :btree
    t.index ["category_id"], name: "index_themes_on_category_id", using: :btree
    t.index ["dependency_id"], name: "index_themes_on_dependency_id", using: :btree
    t.index ["name"], name: "index_themes_on_name", using: :btree
    t.index ["price"], name: "index_themes_on_price", using: :btree
    t.index ["slug"], name: "index_themes_on_slug", using: :btree
    t.index ["team_id"], name: "index_themes_on_team_id", using: :btree
    t.index ["user_id"], name: "index_themes_on_user_id", using: :btree
  end

  create_table "toitems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "password_digest"
    t.string   "activation_digest"
    t.boolean  "activated",                    default: false
    t.datetime "activated_at"
    t.string   "remember_digest"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "first_n",           limit: 30
    t.string   "last_n",            limit: 30
    t.string   "company",           limit: 40
    t.string   "city",              limit: 30
    t.string   "postal_code",       limit: 10
    t.string   "avatar"
    t.boolean  "show_country",                 default: false
    t.boolean  "freelance_av",                 default: false
    t.string   "username",          limit: 30
    t.integer  "country_id"
    t.integer  "state_id"
    t.boolean  "seller",                       default: false
    t.boolean  "admin",                        default: false
    t.boolean  "reviewer",                     default: false
    t.boolean  "job_post",                     default: false
    t.integer  "team_id"
    t.boolean  "leader",                       default: false
    t.decimal  "balance",                      default: "0.0"
    t.index ["team_id"], name: "index_users_on_team_id", using: :btree
  end

  create_table "vacancies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "location"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "job_type",    limit: 20
    t.string   "recruiter",   limit: 10
    t.string   "experience",  limit: 10
    t.integer  "country_id"
    t.integer  "state_id"
    t.string   "slug"
    t.string   "url_form"
    t.index ["category_id"], name: "index_vacancies_on_category_id", using: :btree
    t.index ["country_id"], name: "index_vacancies_on_country_id", using: :btree
    t.index ["state_id"], name: "index_vacancies_on_state_id", using: :btree
    t.index ["user_id"], name: "index_vacancies_on_user_id", using: :btree
  end

  create_table "videms", force: :cascade do |t|
    t.string   "trailer"
    t.integer  "videofx_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["videofx_id"], name: "index_videms_on_videofx_id", using: :btree
  end

  create_table "videofx_autocompletes", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videofxes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.integer  "softopen_id"
    t.text     "note"
    t.string   "thumbnail"
    t.decimal  "price"
    t.boolean  "agree",                     default: false
    t.string   "slug"
    t.string   "url_demo"
    t.string   "video_demo"
    t.integer  "user_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "duration",       limit: 10
    t.string   "resolution",     limit: 10
    t.string   "looped_video",   limit: 10
    t.string   "alpha_channel",  limit: 10
    t.string   "source_audio",   limit: 10
    t.string   "file_size",      limit: 10
    t.string   "require_plugin", limit: 10
    t.integer  "encode_id"
    t.integer  "latar_id"
    t.integer  "vidsub_id"
    t.string   "poster"
    t.decimal  "price_ext"
    t.integer  "team_id"
    t.boolean  "reject",                    default: false
    t.decimal  "average_rate"
    t.integer  "sell",                      default: 0
    t.index ["agree"], name: "index_videofxes_on_agree", using: :btree
    t.index ["category_id"], name: "index_videofxes_on_category_id", using: :btree
    t.index ["encode_id"], name: "index_videofxes_on_encode_id", using: :btree
    t.index ["latar_id"], name: "index_videofxes_on_latar_id", using: :btree
    t.index ["name"], name: "index_videofxes_on_name", using: :btree
    t.index ["price"], name: "index_videofxes_on_price", using: :btree
    t.index ["softopen_id"], name: "index_videofxes_on_softopen_id", using: :btree
    t.index ["team_id"], name: "index_videofxes_on_team_id", using: :btree
    t.index ["user_id"], name: "index_videofxes_on_user_id", using: :btree
    t.index ["vidsub_id"], name: "index_videofxes_on_vidsub_id", using: :btree
  end

  create_table "videorates", force: :cascade do |t|
    t.integer  "framerate_id"
    t.integer  "videofx_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["framerate_id"], name: "index_videorates_on_framerate_id", using: :btree
    t.index ["videofx_id"], name: "index_videorates_on_videofx_id", using: :btree
  end

  create_table "vidplugs", force: :cascade do |t|
    t.integer  "aeplugin_id"
    t.integer  "videofx_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["aeplugin_id"], name: "index_vidplugs_on_aeplugin_id", using: :btree
    t.index ["videofx_id"], name: "index_vidplugs_on_videofx_id", using: :btree
  end

  create_table "vidsubs", force: :cascade do |t|
    t.string   "name"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subcategory_id"], name: "index_vidsubs_on_subcategory_id", using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

  create_table "withdrawals", force: :cascade do |t|
    t.decimal  "mount"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "status",     default: false
    t.string   "address"
    t.index ["user_id"], name: "index_withdrawals_on_user_id", using: :btree
  end

  add_foreign_key "akusukas", "users"
  add_foreign_key "allskills", "skills"
  add_foreign_key "allskills", "users"
  add_foreign_key "allskills", "vacancies", name: "fk_rails_sd434q34"
  add_foreign_key "brokes", "codes"
  add_foreign_key "brokes", "fonts"
  add_foreign_key "brokes", "graphics"
  add_foreign_key "brokes", "t3ds"
  add_foreign_key "brokes", "themes"
  add_foreign_key "brokes", "videofxes"
  add_foreign_key "canopens", "softopen3ds"
  add_foreign_key "canopens", "t3ds"
  add_foreign_key "carts", "users"
  add_foreign_key "categorydetails", "categories"
  add_foreign_key "categorydetails", "subcategories"
  add_foreign_key "codes", "categories"
  add_foreign_key "codes", "codesubs"
  add_foreign_key "codes", "dependencies"
  add_foreign_key "codes", "teams"
  add_foreign_key "codes", "users"
  add_foreign_key "codesubs", "subcategories"
  add_foreign_key "cofiles", "courses"
  add_foreign_key "comments", "codes"
  add_foreign_key "comments", "courses"
  add_foreign_key "comments", "fonts"
  add_foreign_key "comments", "graphics"
  add_foreign_key "comments", "t3ds"
  add_foreign_key "comments", "themes"
  add_foreign_key "comments", "users"
  add_foreign_key "comments", "videofxes"
  add_foreign_key "courses", "categories"
  add_foreign_key "courses", "languages"
  add_foreign_key "courses", "teams"
  add_foreign_key "courses", "users"
  add_foreign_key "databrowsers", "browsers"
  add_foreign_key "databrowsers", "codes"
  add_foreign_key "databrowsers", "themes"
  add_foreign_key "datacompatibles", "codes"
  add_foreign_key "datacompatibles", "compatibles"
  add_foreign_key "datacompatibles", "themes"
  add_foreign_key "dataincludes", "codes"
  add_foreign_key "dataincludes", "fonts"
  add_foreign_key "dataincludes", "graphics"
  add_foreign_key "dataincludes", "includes"
  add_foreign_key "dataincludes", "t3ds"
  add_foreign_key "dataincludes", "themes"
  add_foreign_key "dataincludes", "videofxes"
  add_foreign_key "dataositems", "ositems"
  add_foreign_key "dataositems", "t3ds"
  add_foreign_key "datasubcategories", "codes"
  add_foreign_key "datasubcategories", "courses"
  add_foreign_key "datasubcategories", "graphics"
  add_foreign_key "datasubcategories", "subcategories"
  add_foreign_key "datasubcategories", "t3ds"
  add_foreign_key "datasubcategories", "themes"
  add_foreign_key "datasubcategories", "videofxes"
  add_foreign_key "dependencies", "categories"
  add_foreign_key "diasukas", "akusukas"
  add_foreign_key "diasukas", "codes"
  add_foreign_key "diasukas", "courses"
  add_foreign_key "diasukas", "fonts"
  add_foreign_key "diasukas", "graphics"
  add_foreign_key "diasukas", "t3ds"
  add_foreign_key "diasukas", "themes"
  add_foreign_key "diasukas", "videofxes"
  add_foreign_key "fontindustries", "fonts"
  add_foreign_key "fontindustries", "industries"
  add_foreign_key "fonts", "categories"
  add_foreign_key "fonts", "teams"
  add_foreign_key "fonts", "users"
  add_foreign_key "freeitems", "codes"
  add_foreign_key "freeitems", "courses"
  add_foreign_key "freeitems", "fonts"
  add_foreign_key "freeitems", "graphics"
  add_foreign_key "freeitems", "t3ds"
  add_foreign_key "freeitems", "themes"
  add_foreign_key "freeitems", "videofxes"
  add_foreign_key "freepis", "courses"
  add_foreign_key "graphics", "categories"
  add_foreign_key "graphics", "softopens"
  add_foreign_key "graphics", "teams"
  add_foreign_key "graphics", "users"
  add_foreign_key "graphindustries", "graphics"
  add_foreign_key "graphindustries", "industries"
  add_foreign_key "headsecs", "courses"
  add_foreign_key "lectures", "headsecs"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "codes"
  add_foreign_key "line_items", "courses"
  add_foreign_key "line_items", "fonts"
  add_foreign_key "line_items", "graphics"
  add_foreign_key "line_items", "t3ds"
  add_foreign_key "line_items", "themes"
  add_foreign_key "line_items", "videofxes"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "maintoitems", "includes"
  add_foreign_key "maintoitems", "toitems"
  add_foreign_key "memos", "notes"
  add_foreign_key "messagereviewers", "teams"
  add_foreign_key "messagereviewers", "users"
  add_foreign_key "modelsubs", "subcategories"
  add_foreign_key "notes", "teams"
  add_foreign_key "notes", "users"
  add_foreign_key "notifications", "codes"
  add_foreign_key "notifications", "courses"
  add_foreign_key "notifications", "fonts"
  add_foreign_key "notifications", "graphics"
  add_foreign_key "notifications", "line_items"
  add_foreign_key "notifications", "t3ds"
  add_foreign_key "notifications", "themes"
  add_foreign_key "notifications", "users"
  add_foreign_key "notifications", "users", column: "notified_by_id"
  add_foreign_key "notifications", "videofxes"
  add_foreign_key "ourstores", "users"
  add_foreign_key "payment_noties", "carts"
  add_foreign_key "reviews", "codes"
  add_foreign_key "reviews", "courses"
  add_foreign_key "reviews", "fonts"
  add_foreign_key "reviews", "graphics"
  add_foreign_key "reviews", "t3ds"
  add_foreign_key "reviews", "themes"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "videofxes"
  add_foreign_key "revrests", "codes"
  add_foreign_key "revrests", "courses"
  add_foreign_key "revrests", "fonts"
  add_foreign_key "revrests", "graphics"
  add_foreign_key "revrests", "t3ds"
  add_foreign_key "revrests", "themes"
  add_foreign_key "revrests", "videofxes"
  add_foreign_key "screenshots", "codes"
  add_foreign_key "screenshots", "fonts"
  add_foreign_key "screenshots", "graphics"
  add_foreign_key "screenshots", "t3ds"
  add_foreign_key "screenshots", "themes"
  add_foreign_key "screenshots", "videofxes"
  add_foreign_key "social_networks", "users"
  add_foreign_key "states", "countries"
  add_foreign_key "t3ds", "categories"
  add_foreign_key "t3ds", "genres"
  add_foreign_key "t3ds", "geometries"
  add_foreign_key "t3ds", "modelsubs"
  add_foreign_key "t3ds", "teams"
  add_foreign_key "t3ds", "users"
  add_foreign_key "taggings", "codes"
  add_foreign_key "taggings", "courses"
  add_foreign_key "taggings", "fonts"
  add_foreign_key "taggings", "graphics"
  add_foreign_key "taggings", "t3ds"
  add_foreign_key "taggings", "tags"
  add_foreign_key "taggings", "themes"
  add_foreign_key "taggings", "videofxes"
  add_foreign_key "themes", "categories"
  add_foreign_key "themes", "dependencies"
  add_foreign_key "themes", "teams"
  add_foreign_key "themes", "users"
  add_foreign_key "users", "countries", name: "users_country_id_fkey"
  add_foreign_key "users", "states", name: "users_state_id_fkey"
  add_foreign_key "users", "teams"
  add_foreign_key "vacancies", "categories"
  add_foreign_key "vacancies", "countries"
  add_foreign_key "vacancies", "states"
  add_foreign_key "vacancies", "users"
  add_foreign_key "videms", "videofxes"
  add_foreign_key "videofxes", "categories"
  add_foreign_key "videofxes", "encodes"
  add_foreign_key "videofxes", "latars"
  add_foreign_key "videofxes", "softopens"
  add_foreign_key "videofxes", "teams"
  add_foreign_key "videofxes", "users"
  add_foreign_key "videofxes", "vidsubs"
  add_foreign_key "videorates", "framerates"
  add_foreign_key "videorates", "videofxes"
  add_foreign_key "vidplugs", "aeplugins"
  add_foreign_key "vidplugs", "videofxes"
  add_foreign_key "vidsubs", "subcategories"
  add_foreign_key "withdrawals", "users"
end
