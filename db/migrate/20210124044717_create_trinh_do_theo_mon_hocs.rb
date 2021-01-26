class CreateTrinhDoTheoMonHocs < ActiveRecord::Migration[6.0]
  def change
    create_table :trinh_do_theo_mon_hocs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
