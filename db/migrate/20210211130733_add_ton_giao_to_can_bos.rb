class AddTonGiaoToCanBos < ActiveRecord::Migration[6.0]
  def change
    add_reference :can_bos, :ton_giao, null: true, foreign_key: true
  end
end
