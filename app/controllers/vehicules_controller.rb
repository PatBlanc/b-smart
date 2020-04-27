class VehiculesController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @vehicules = current_user.vehicules.all
  end

  def show
    @proportion = Proportion.new
  end

  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.user = current_user
    if @vehicule.save
      redirect_to vehicule_path(@vehicule)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @vehicule.update(vehicule_params)
      respond_to do |format|
        format.html { redirect_to vehicules_path }
        format.js
      end
      else
        respond_to do |format|
          format.html { render :edit }
          format.js
        end
    end
  end

  def destroy
    @vehicule.destroy
    redirect_to vehicules_path
  end

  private

  def set_vehicule
    @vehicule = Vehicule.find(params[:id])
  end

  def vehicule_params
    params.require(:vehicule).permit(:brand, :model, :license_plate, :fuel_type, :engine_size, :year)
  end
end
