class UsersController < ApplicationController
  before_action :require_admin

  def index
    @users = User.all
  end

  private

  def require_admin
    redirect_to :root, flash: {success: 'Nice try!'} if !current_user.admin
  end
end
