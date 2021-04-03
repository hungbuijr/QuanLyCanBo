class CreateNgoaiNgus < ActiveRecord::Migration[6.0]
  def change
    create_table :ngoai_ngus do |t|
      t.string :name
      t.string :description
      t.boolean :enabled
      t.string :cap_do

      t.timestamps
    end
  end
end
