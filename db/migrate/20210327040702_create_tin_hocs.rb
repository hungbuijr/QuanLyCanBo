class CreateTinHocs < ActiveRecord::Migration[6.0]
  def change
    create_table :tin_hocs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
