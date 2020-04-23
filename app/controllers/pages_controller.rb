class PagesController < ApplicationController
  def statistics
    @stores = current_user.stores

    #Frequence de visite, si date de visite trop éloignée alors changer status en "à visiter d'urgence"
    @frequency_hash = Hash.new
    @stores.each do |store|
      if store.visited != true
        store.proportions.each do |proportion|
        @frequency_hash[store.name] =+  store_id.created_at
        end
      end
    end

    # thrifted = @stores.group(:second_hand).count
    # labels = { true => 'Thrifted', false => 'New' }
    # @thrift_hash = thrifted.transform_keys(&labels.method(:[]))


    statuses = ["déjà visité", "à visiter", "à visiter d'urgence"]
    @status_hash = Hash.new
    @stores.each do |store|
      if statuses.include?(store.status)
        if @status_hash[store.status]
        @status_hash[store.status] += 1
        else
        @status_hash[store.status] = 1
        end
      end
    end
  end
end
