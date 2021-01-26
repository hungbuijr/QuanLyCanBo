class CreateChuyenDenDangBoKhacs < ActiveRecord::Migration[6.0]
  def change
    create_table :chuyen_den_dang_bo_khacs do |t|
      t.string :name
      t.string :description
      t.date :ngay_chuyen_di
      t.boolean :enabled

      t.timestamps
    end
  end
end
