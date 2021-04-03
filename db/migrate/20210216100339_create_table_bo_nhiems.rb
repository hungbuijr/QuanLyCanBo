class CreateTableBoNhiems < ActiveRecord::Migration[6.0]
  def change
    create_table :table_bo_nhiems do |t|
      t.string :name
      t.string :description
      t.boolean :enabled
      t.string :so_quyet_dinh
      t.references :can_bo, null: true, foreign_key: true
      t.references :chuc_danh, null: true, foreign_key: true
    end
  end
end
