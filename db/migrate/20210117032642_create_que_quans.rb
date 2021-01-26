class CreateQueQuans < ActiveRecord::Migration[6.0]
  def change
    create_table :que_quans do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
