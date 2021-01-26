class CreateChucDanhs < ActiveRecord::Migration[6.0]
  def change
    create_table :chuc_danhs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
