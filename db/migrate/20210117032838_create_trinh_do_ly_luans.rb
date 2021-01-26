class CreateTrinhDoLyLuans < ActiveRecord::Migration[6.0]
  def change
    create_table :trinh_do_ly_luans do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
