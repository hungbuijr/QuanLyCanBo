class AddNgoaiNguIdToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :ngoai_ngu_id, :integer
  end
end
