class AddChucDanhBoiDuongToCanBos < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :chuc_danh_boi_duong_id, :integer
  end
end
