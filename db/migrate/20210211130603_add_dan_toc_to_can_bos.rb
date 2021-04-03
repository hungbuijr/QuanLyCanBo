class AddDanTocToCanBos < ActiveRecord::Migration[6.0]
  def change
    add_reference :can_bos, :dan_toc, null: true, foreign_key: true
  end
end
