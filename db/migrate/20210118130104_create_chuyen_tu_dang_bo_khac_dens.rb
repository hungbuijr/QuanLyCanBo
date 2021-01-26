class CreateChuyenTuDangBoKhacDens < ActiveRecord::Migration[6.0]
  def change
    create_table :chuyen_tu_dang_bo_khac_dens do |t|
      t.string :name
      t.string :description
      t.date :ngay_chuyen_den
      t.boolean :enabled

      t.timestamps
    end
  end
end
