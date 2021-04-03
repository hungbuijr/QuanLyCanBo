class CreateTrinhDoCanBo < ActiveRecord::Migration[6.0]
  def change
    create_table :trinh_do_can_bos do |t|
      t.integer :can_bo_id
      t.integer :trinh_do_id
      t.string :cap_do

      t.timestamps
    end
  end
end
