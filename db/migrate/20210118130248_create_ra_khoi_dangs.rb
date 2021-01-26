class CreateRaKhoiDangs < ActiveRecord::Migration[6.0]
  def change
    create_table :ra_khoi_dangs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled
      t.date :ngay_ra_khoi_dang
      t.string :hinh_thuc_ra_khoi_dang

      t.timestamps
    end
  end
end
