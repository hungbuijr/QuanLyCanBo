class AddCanBoToDangViens < ActiveRecord::Migration[6.0]
  def change
    add_reference :dang_viens, :can_bo, null: true, foreign_key: true
  end
end
