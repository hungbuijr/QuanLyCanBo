class CreateTrinhDoBoiDuongs < ActiveRecord::Migration[6.0]
  def change
    create_table :trinh_do_boi_duongs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
