class CreateCapBacs < ActiveRecord::Migration[6.0]
  def change
    create_table :cap_bacs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
