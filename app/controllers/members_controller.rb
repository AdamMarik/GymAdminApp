class MembersController < ApplicationController
  before_action :set_member, only: [ :show, :edit, :update, :destroy ]


  def index
    @members = Member.all
  end

  def show
    # Perform any necessary actions here
    redirect_to members_path, notice: "Member details displayed"
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: "Member was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @member.update(member_params)
      redirect_to @member, notice: "Member was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    Rails.logger.info "Deleting member with ID: #{@member.id}"
    @member.destroy
    redirect_to members_path, notice: "Member was successfully destroyed."
  end


  private

  def set_member
    @member = Member.find(params[:id])  # Find the member by ID
  end

  def member_params
    params.require(:member).permit(:name, :membership_id, :contact_info, :membership_type)
  end
end
