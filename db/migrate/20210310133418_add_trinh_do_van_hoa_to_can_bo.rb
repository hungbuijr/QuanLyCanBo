class AddTrinhDoVanHoaToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :trinh_do_van_hoa_id, :integer
    add_column :can_bos, :trinh_do_ly_luan_id, :integer
    add_column :can_bos, :chuyen_mon_nghiep_vu_id, :integer
  end
end
