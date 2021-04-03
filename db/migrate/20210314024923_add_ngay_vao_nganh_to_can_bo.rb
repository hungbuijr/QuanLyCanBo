class AddNgayVaoNganhToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :ngay_vao_nganh, :date
  end
end
