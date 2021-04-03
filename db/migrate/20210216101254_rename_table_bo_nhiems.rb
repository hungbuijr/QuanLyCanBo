class RenameTableBoNhiems < ActiveRecord::Migration[6.0]
  def change
    rename_table :table_bo_nhiems, :bo_nhiems
  end
end
