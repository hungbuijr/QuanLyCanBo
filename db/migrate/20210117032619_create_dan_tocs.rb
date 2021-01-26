class CreateDanTocs < ActiveRecord::Migration[6.0]
  def change
    create_table :dan_tocs do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
