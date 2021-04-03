class AddChucDanhBoNhiemIdToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :chuc_danh_bo_nhiem_id, :integer
  end
end
