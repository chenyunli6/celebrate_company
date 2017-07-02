class Admin::MembersController < AdminController
  def index
    @members = Member.all
  end
end
