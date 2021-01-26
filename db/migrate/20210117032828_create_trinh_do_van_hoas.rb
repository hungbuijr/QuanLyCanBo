class CreateTrinhDoVanHoas < ActiveRecord::Migration[6.0]
  def change
    create_table :trinh_do_van_hoas do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
