class CanBoRemoveReferenceBoiDuongQuyHoachChoChucDanh < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:can_bos, :boi_duong_quy_hoach_cho_chuc_danh, foreign_key: true)
  end
end
