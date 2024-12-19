class CheckInsController < ApplicationController
  before_action :set_member, only: [ :create ]

  def index
    @check_ins = CheckIn.all
    @members = Member.all
    @check_in = CheckIn.new
  end

  def create
    @check_in = CheckIn.new(check_in_params)
    if @check_in.save
      activate_member_if_first_check_in(@member)
      redirect_to check_ins_path, notice: "Member successfully checked in."
    else
      @members = Member.all
      render :index
    end
  end

  def check_out
    @check_in = CheckIn.find(params[:id])
    if @check_in.update(check_out_time: Time.current, checked_out: true)
      redirect_to check_ins_path, notice: "Member successfully checked out."
    else
      redirect_to check_ins_path, alert: "Error during check-out."
    end
  end

  private

  def activate_member_if_first_check_in(member)
    unless member.active
      member.update(active: true)
    end
  end

  def set_member
    @member = Member.find(params[:check_in][:member_id])
  end

  def check_in_params
    params.require(:check_in).permit(:member_id)
  end
end
