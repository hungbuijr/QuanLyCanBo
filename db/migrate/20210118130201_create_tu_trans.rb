class CreateTuTrans < ActiveRecord::Migration[6.0]
  def change
    create_table :tu_trans do |t|
      t.string :name
      t.string :description
      t.string :ly_do
      t.date :ngay_tu_tran
      t.boolean :enabled

      t.timestamps
    end
  end
end
