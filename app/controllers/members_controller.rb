class MembersController < ApplicationController
  layout 'publish'

  def new
    @member = Member.new
  end

  def create
    Member.create member_params
    redirect_to root_path
  end

  private

  def member_params
    if params[:member][:family_sizes1]
      params[:member][:sizes] |= params[:member][:family_sizes1]
    end
    if params[:member][:family_sizes2]
      params[:member][:sizes] |= params[:member][:family_sizes2]
    end
    params.require(:member).permit(:name, :department, :employee_code, :family_amount, :shuttle_bus, :bus_line, anniversaries: [], sizes: [], family_sizes1: [], family_sizes2: [])
  end
end
