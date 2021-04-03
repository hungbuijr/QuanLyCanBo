class AddNgayVaoDangToDangVien < ActiveRecord::Migration[6.0]
  def change
    add_column :dang_viens, :ngay_vao_dang, :date
  end
end
