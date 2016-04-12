class HackersController < ApplicationController
  before_action :set_hacker, only: [:show]
  before_action :own_hacker, only: [:edit, :update]

  def index
    @hackers = Hacker.all
  end

  def show
  end

  # No new action!
  #def new
  #end

  def edit
    @hacker.community_involvements.build
  end

  def create
    @hacker = current_user.create_hacker(hacker_params)
    if @hacker.save
      redirect_to @hacker, notice: "Profile was successfully created."
    else
      render :new
    end
  end

  def update
    if @hacker.update(hacker_params)
      redirect_to hacker_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  # no destroy action!
  #def destroy
  #end

  private

  def set_hacker
    @hacker = Hacker.friendly.find(params[:id])
  end

  def own_hacker
    @hacker = current_user.hacker
    @hacker ||= current_user.build_hacker
  end

  def hacker_params
    params.require(:hacker).permit(
      :first_name,
      :last_name,
      :alias,
      :_destroy,
      community_involvements_attributes: [:id, :kind, :community_id, :_destroy])
  end
end
