class ManagersController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
  end

  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.new(manager_params)
    @manager.save
  end

  def update
    @manager.update(manager_params)
  end

  def edit; end

  def show; end

  def destroy
    @manager.destroy

    # no need for app/views/managers/destroy.html.erb
    redirect_to managers_path
  end

  private

  def set_manager
    @manager = Manager.find(params[:id])
  end

  def manager_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:manager).permit(:name, :phone)
  end
end
