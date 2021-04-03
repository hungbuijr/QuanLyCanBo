class AddNgayCapToBoNhiem < ActiveRecord::Migration[6.0]
  def change
    add_column :bo_nhiems, :ngay_cap, :date
  end
end
