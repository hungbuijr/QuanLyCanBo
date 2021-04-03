class AddChucDanhQuyHoachIdToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :chuc_danh_quy_hoach_id, :bigint
  end
end
