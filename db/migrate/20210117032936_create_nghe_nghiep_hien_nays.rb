class CreateNgheNghiepHienNays < ActiveRecord::Migration[6.0]
  def change
    create_table :nghe_nghiep_hien_nays do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
