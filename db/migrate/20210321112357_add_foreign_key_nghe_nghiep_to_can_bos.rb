class AddForeignKeyNgheNghiepToCanBos < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :nghe_nghiep_truoc_khi_vao_dang_id, :integer
    add_column :can_bos, :nghe_nghiep_hien_nay_id, :integer
  end
end
