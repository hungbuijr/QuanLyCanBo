class AddColumnsToChucDanh < ActiveRecord::Migration[6.0]
  def change
    add_column :chuc_danhs, :so_quyet_dinh, :varchar
    add_column :chuc_danhs, :ngay_cap, :date
  end
end
