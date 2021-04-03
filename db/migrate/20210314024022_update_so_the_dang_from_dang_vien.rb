class UpdateSoTheDangFromDangVien < ActiveRecord::Migration[6.0]
  def change
    change_column :dang_viens, :so_the_dang, :string
  end
end
