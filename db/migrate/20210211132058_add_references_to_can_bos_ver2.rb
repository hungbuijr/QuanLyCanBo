class AddReferencesToCanBosVer2 < ActiveRecord::Migration[6.0]
  def change
    add_reference :can_bos, :cap_bac, null: true, foreign_key: true
    add_reference :can_bos, :chuc_vu, null: true, foreign_key: true
    add_reference :can_bos, :chuc_danh, null: true, foreign_key: true
    add_reference :can_bos, :chuc_danh_da_quy_hoach, null: true, foreign_key: true
    add_reference :can_bos, :boi_duong_quy_hoach_cho_chuc_danh, null: true, foreign_key: true
  end
end
