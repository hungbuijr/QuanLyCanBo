class CreateChucDanhDaQuyHoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :chuc_danh_da_quy_hoaches do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
