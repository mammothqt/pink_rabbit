class StagesController < ApplicationController
  load_and_authorize_resource
  before_action :load_stage, only: [:edit, :update, :destroy]

  def new
    @stage = Stage.new
  end

  def create
    @stage = Stage.new(stage_params)

    if @stage.save
      flash[:success] = t('.stage_create')
      redirect_to stages_path
    else
      render :new
    end
  end

  def index
    @stages = Stage.newest.paginate(page: params[:page],
                                    per_page: Settings.item.default_number)
  end

  def update
    if @stage.update(stage_params)
      flash[:success] = t('.stage_update')
      redirect_to stages_path
	  else
      render :edit
    end
  end

  def destroy
    flash[:success] = t('.stage_delete') if @stage.destroy
    redirect_to stages_path
  end

  private

  def load_stage
    @stage = Stage.find_by(id: params[:id])
    redirect_to root_path if @stage.blank?
  end

  def stage_params
    params.require(:stage).permit(:name, :address, :phone_number)
  end
end
