class CheckIn < ApplicationRecord
  belongs_to :member
  validates :member_id, presence: true

  before_create :set_check_in_time

  private

  def set_check_in_time
    self.check_in_time ||= Time.current  # Set the current time when the check-in is created
  end

  def checked_in?
    check_out_time.nil?
  end
end
