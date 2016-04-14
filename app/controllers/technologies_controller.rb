class TechnologiesController < ApplicationController
  before_action :set_technology, only: [:show, :edit, :update, :destroy]

  def index
    @technologies = Technology.all
  end

  def show
  end

  def new
    @technology = Technology.new
  end

  def edit
  end

  def create
    @technology = Technology.new(technology_params)
    if @technology.save
      redirect_to @technology, notice: "Technology was successfully created."
    else
      render :new
    end
  end

  def update
    if @technology.update(technology_params)
      redirect_to technologies_path, notice: 'Technology was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @technology.destroy
      redirect_to technologies_url, notice: 'Technology was successfully deleted'
    else
      redirect_to technologies_url, notice: 'Technology could not be deleted.'
    end
  end

  private

  def set_technology
    @technology = Technology.friendly.find(params[:id])
  end

  def technology_params
    params.require(:technology).permit(
      :name,
      :kind,
      :_destroy)
  end
end
