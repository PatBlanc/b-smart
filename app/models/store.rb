class Store < ApplicationRecord
  def index
    @stores = Store.all
  end
end
