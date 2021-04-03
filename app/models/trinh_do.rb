class TrinhDo < ApplicationRecord
  has_many :trinh_do_can_bos
  has_many :can_bos, through: :trinh_do_can_bos
end
