class CanBo < ApplicationRecord
  belongs_to :que_quan
  belongs_to :cap_bac
  belongs_to :chuc_vu
  belongs_to :chuc_danh
end
