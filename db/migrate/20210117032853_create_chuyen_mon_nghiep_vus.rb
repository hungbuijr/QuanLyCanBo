class CreateChuyenMonNghiepVus < ActiveRecord::Migration[6.0]
  def change
    create_table :chuyen_mon_nghiep_vus do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
