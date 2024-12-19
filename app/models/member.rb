class Member < ApplicationRecord
  has_many :check_ins
  validates :name, :membership_id, :contact_info, :membership_type, presence: true

  def checked_in
    check_ins.where(check_out_time: nil).exists?
  end

  def active_account?
    self.active == true
  end
end
