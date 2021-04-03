class AddTomTatQuaTrinhCongTacToCanBo < ActiveRecord::Migration[6.0]
  def change
    add_column :can_bos, :tom_tat_qua_trinh_cong_tac, :text
  end
end
