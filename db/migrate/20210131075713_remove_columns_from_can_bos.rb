class RemoveColumnsFromCanBos < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:can_bos, :cap_bac, foreign_key: true)
    remove_reference(:can_bos, :chuc_vu, foreign_key: true)
    remove_reference(:can_bos, :chuc_danh, foreign_key: true)
    remove_reference(:can_bos, :chuc_danh_da_quy_hoach, foreign_key: true)
    remove_reference(:can_bos, :boi_duong_quy_hoach_cho_chuc_danh, foreign_key: true)
  end
end
