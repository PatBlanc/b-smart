class ManagersController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @managers = current_user.managers.all
  end

  def show
    @proportion = Proportion.new
  end

  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.new(manager_params)
    @manager.store_id.user = current_user
    if @manager.save
      redirect_to manager_path(@manager)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @manager.update(manager_params)
      respond_to do |format|
        format.html { redirect_to managers_path }
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
    @manager.destroy
    redirect_to managers_path
  end

  private

  def set_manager
    @manager = Manager.find(params[:id])
  end

  def manager_params
    params.require(:manager).permit(:first_name, :last_name, :phone, :main, :email, :vacation_start, :vacation_end)
  end
end
