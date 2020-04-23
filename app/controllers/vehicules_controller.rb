class VehiculesController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @vehicules = Vehicule.all
  end

  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.save
  end

  def update
    @vehicule.update(vehicule_params)
  end

  def edit; end

  def show; end

  def destroy
    @vehicule.destroy

    # no need for app/views/vehicules/destroy.html.erb
    redirect_to vehicules_path
  end

  private

  def set_vehicule
    @vehicule = Vehicule.find(params[:id])
  end

  def vehicule_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:vehicule).permit(:name, :phone)
  end
end
