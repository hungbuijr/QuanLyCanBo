class AddReferecensToCanBos < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :tin_hoc_id, :integer
    add_column :can_bos, :boi_duong_qpan_id, :integer
    add_column :can_bos, :trinh_do_khac_id, :integer
  end
end
