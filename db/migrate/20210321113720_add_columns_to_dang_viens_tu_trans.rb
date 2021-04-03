class AddColumnsToDangViensTuTrans < ActiveRecord::Migration[6.0]
  def change
    add_column :dang_viens, :bo_doi_cong_an_huu_tri, :boolean
    add_column :dang_viens, :ngay_chuyen_di, :date
    add_column :dang_viens, :chuyen_den_dang_bo, :string
    add_column :dang_viens, :ngay_chuyen_den, :string
    add_column :dang_viens, :chuyen_tu_dang_bo, :string
    add_column :dang_viens, :ngay_ra_khoi_dang, :date
    add_column :dang_viens, :hinh_thuc_ra_dang, :string
    add_column :dang_viens, :ghi_chu, :text
    add_column :tu_trans, :can_bo_id, :integer
  end
end
