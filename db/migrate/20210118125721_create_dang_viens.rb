class CreateDangViens < ActiveRecord::Migration[6.0]
  def change
    create_table :dang_viens do |t|
      t.integer :so_the_dang
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
