class CreateChuyenNganhs < ActiveRecord::Migration[6.0]
  def change
    create_table :chuyen_nganhs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
