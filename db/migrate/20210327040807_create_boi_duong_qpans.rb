class CreateBoiDuongQpans < ActiveRecord::Migration[6.0]
  def change
    create_table :boi_duong_qpans do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
