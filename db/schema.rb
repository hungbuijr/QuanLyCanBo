# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_27_090232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bo_nhiems", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.string "so_quyet_dinh"
    t.bigint "can_bo_id"
    t.bigint "chuc_danh_id"
    t.date "ngay_cap"
    t.index ["can_bo_id"], name: "index_bo_nhiems_on_can_bo_id"
    t.index ["chuc_danh_id"], name: "index_bo_nhiems_on_chuc_danh_id"
  end

  create_table "boi_duong_nvcsgts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "boi_duong_qpans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "boi_duong_quy_hoach_cho_chuc_danhs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "can_bos", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "que_quan_id"
    t.bigint "dan_toc_id"
    t.bigint "gioi_tinh_id"
    t.bigint "ton_giao_id"
    t.bigint "cap_bac_id"
    t.bigint "chuc_vu_id"
    t.bigint "chuc_danh_id"
    t.bigint "chuc_danh_da_quy_hoach_id"
    t.bigint "chuc_danh_quy_hoach_id"
    t.integer "chuc_danh_bo_nhiem_id"
    t.integer "trinh_do_van_hoa_id"
    t.integer "trinh_do_ly_luan_id"
    t.integer "chuyen_mon_nghiep_vu_id"
    t.integer "chuyen_nganh_id"
    t.text "tom_tat_qua_trinh_cong_tac"
    t.date "ngay_vao_nganh"
    t.integer "ngoai_ngu_id"
    t.integer "nghe_nghiep_truoc_khi_vao_dang_id"
    t.integer "nghe_nghiep_hien_nay_id"
    t.integer "tin_hoc_id"
    t.integer "boi_duong_qpan_id"
    t.integer "trinh_do_khac_id"
    t.integer "chuc_danh_boi_duong_id"
    t.index ["cap_bac_id"], name: "index_can_bos_on_cap_bac_id"
    t.index ["chuc_danh_da_quy_hoach_id"], name: "index_can_bos_on_chuc_danh_da_quy_hoach_id"
    t.index ["chuc_danh_id"], name: "index_can_bos_on_chuc_danh_id"
    t.index ["chuc_vu_id"], name: "index_can_bos_on_chuc_vu_id"
    t.index ["dan_toc_id"], name: "index_can_bos_on_dan_toc_id"
    t.index ["gioi_tinh_id"], name: "index_can_bos_on_gioi_tinh_id"
    t.index ["que_quan_id"], name: "index_can_bos_on_que_quan_id"
    t.index ["ton_giao_id"], name: "index_can_bos_on_ton_giao_id"
  end

  create_table "cap_bacs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuc_danh_boi_duongs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuc_danh_da_quy_hoaches", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuc_danhs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuc_vus", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuyen_den_dang_bo_khacs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "ngay_chuyen_di"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuyen_mon_nghiep_vus", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuyen_nganhs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chuyen_tu_dang_bo_khac_dens", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "ngay_chuyen_den"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dan_tocs", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dang_viens", force: :cascade do |t|
    t.string "so_the_dang"
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "can_bo_id"
    t.date "ngay_vao_dang"
    t.date "ngay_chinh_thuc"
    t.boolean "bo_doi_cong_an_huu_tri"
    t.date "ngay_chuyen_di"
    t.string "chuyen_den_dang_bo"
    t.string "ngay_chuyen_den"
    t.string "chuyen_tu_dang_bo"
    t.date "ngay_ra_khoi_dang"
    t.string "hinh_thuc_ra_dang"
    t.text "ghi_chu"
    t.index ["can_bo_id"], name: "index_dang_viens_on_can_bo_id"
  end

  create_table "gioi_tinhs", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mon_hocs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nghe_nghiep_hien_nays", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nghe_nghiep_truoc_khi_vao_dangs", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nghe_nghieps", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ngoai_ngus", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.string "cap_do"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qua_trinh_cong_tacs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "que_quans", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ra_khoi_dangs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.date "ngay_ra_khoi_dang"
    t.string "hinh_thuc_ra_khoi_dang"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tin_hocs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ton_giaos", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_do_boi_duongs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_do_can_bos", force: :cascade do |t|
    t.integer "can_bo_id"
    t.integer "trinh_do_id"
    t.string "cap_do"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_do_khacs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_do_ly_luans", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_do_theo_mon_hocs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_do_van_hoas", force: :cascade do |t|
    t.string "name"
    t.boolean "enabled"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trinh_dos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tu_trans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "ly_do"
    t.date "ngay_tu_tran"
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "can_bo_id"
  end

  add_foreign_key "bo_nhiems", "can_bos"
  add_foreign_key "bo_nhiems", "chuc_danhs"
  add_foreign_key "can_bos", "cap_bacs"
  add_foreign_key "can_bos", "chuc_danh_da_quy_hoaches"
  add_foreign_key "can_bos", "chuc_danhs"
  add_foreign_key "can_bos", "chuc_vus"
  add_foreign_key "can_bos", "dan_tocs"
  add_foreign_key "can_bos", "gioi_tinhs"
  add_foreign_key "can_bos", "que_quans"
  add_foreign_key "can_bos", "ton_giaos"
  add_foreign_key "dang_viens", "can_bos"
end
