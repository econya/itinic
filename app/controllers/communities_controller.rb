class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show, :edit, :update, :destroy]

  def index
    @communities = Community.all
  end

  def show
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to @community, notice: "Community was successfully created."
    else
      render :new
    end
  end

  def update
    if @community.update(community_params)
      redirect_to communities_path, notice: 'Community was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @community.destroy
      redirect_to communities_url, notice: 'Community was successfully deleted'
    else
      redirect_to communities_url, notice: 'Community could not be deleted.'
    end
  end

  private

  def set_community
    @community = Community.friendly.find(params[:id])
  end

  def community_params
    params.require(:community).permit(
      :name,
      :_destroy)
  end
end
