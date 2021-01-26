class CreateQuaTrinhCongTacs < ActiveRecord::Migration[6.0]
  def change
    create_table :qua_trinh_cong_tacs do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
