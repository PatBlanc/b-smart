class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.save
  end

  def update
    @store.update(store_params)
  end

  def edit; end

  def show; end

  def destroy
    @store.destroy

    # no need for app/views/stores/destroy.html.erb
    redirect_to stores_path
  end

  private

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:store).permit(:name, :address, :group)
  end
end
