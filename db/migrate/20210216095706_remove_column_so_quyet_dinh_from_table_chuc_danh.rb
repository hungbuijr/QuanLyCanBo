class RemoveColumnSoQuyetDinhFromTableChucDanh < ActiveRecord::Migration[6.0]
  def change
    remove_column :chuc_danhs, :so_quyet_dinh
    remove_column :chuc_danhs, :ngay_cap
  end
end
