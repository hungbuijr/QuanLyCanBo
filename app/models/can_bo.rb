class CanBo < ApplicationRecord
  belongs_to :dan_toc
  belongs_to :ton_giao
  belongs_to :gioi_tinh
  belongs_to :que_quan

  belongs_to :cap_bac
  belongs_to :chuc_vu
  belongs_to :chuc_danh
  belongs_to :chuc_danh_quy_hoach, class_name: 'ChucDanh', foreign_key: :chuc_danh_quy_hoach_id
  belongs_to :chuc_danh_bo_nhiem, class_name: 'ChucDanh', foreign_key: :chuc_danh_bo_nhiem_id
  belongs_to :chuc_danh_boi_duong, class_name: 'ChucDanh', foreign_key: :chuc_danh_boi_duong_id
  belongs_to :boi_duong_qpan, class_name: 'BoiDuongQpan', foreign_key: :boi_duong_qpan_id
  belongs_to :tin_hoc
  belongs_to :trinh_do_khac
  belongs_to :trinh_do_van_hoa
  belongs_to :trinh_do_ly_luan
  belongs_to :chuyen_mon_nghiep_vu
  belongs_to :chuyen_nganh
  belongs_to :ngoai_ngu
  belongs_to :nghe_nghiep_truoc_khi_vao_dang, class_name: 'NgheNghiep', foreign_key: :nghe_nghiep_truoc_khi_vao_dang_id
  belongs_to :nghe_nghiep_hien_nay, class_name: 'NgheNghiep', foreign_key: :nghe_nghiep_hien_nay_id

  has_one :dang_vien
  accepts_nested_attributes_for :dang_vien, allow_destroy: true

  has_many :bo_nhiems, dependent: :destroy
  accepts_nested_attributes_for :bo_nhiems, allow_destroy: true

  has_one :tu_tran
  accepts_nested_attributes_for :tu_tran, allow_destroy: true

  has_many :trinh_do_can_bos
  accepts_nested_attributes_for :trinh_do_can_bos, allow_destroy: true
  has_many :trinh_dos, through: :trinh_do_can_bos

  delegate :ngay_vao_dang, :ngay_chinh_thuc, :so_the_dang, :bo_doi_cong_an_huu_tri, to: :dang_vien, allow_nil: true

  def ngay_vao_nganh_vao_dang
    [ngay_vao_nganh, ngay_vao_dang].select(&:present?).join(', ')
  end

  def nghe_nghiep
    [nghe_nghiep_truoc_khi_vao_dang&.name, nghe_nghiep_hien_nay&.name].select(&:present?).join(', ')
  end
end
