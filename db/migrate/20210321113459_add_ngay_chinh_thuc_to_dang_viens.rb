class AddNgayChinhThucToDangViens < ActiveRecord::Migration[6.0]
  def change
    add_column :dang_viens, :ngay_chinh_thuc, :date
  end
end
