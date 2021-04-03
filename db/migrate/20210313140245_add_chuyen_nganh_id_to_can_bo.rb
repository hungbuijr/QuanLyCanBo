class AddChuyenNganhIdToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :chuyen_nganh_id, :integer
  end
end
