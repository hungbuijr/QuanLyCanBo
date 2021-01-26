class CreateNgheNghiepTruocKhiVaoDangs < ActiveRecord::Migration[6.0]
  def change
    create_table :nghe_nghiep_truoc_khi_vao_dangs do |t|
      t.string :name
      t.boolean :enabled
      t.string :description

      t.timestamps
    end
  end
end
