class User < ApplicationRecord
  has_many :vehicules
  has_many :appointments
  has_many :stores, through: :appointments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#  def stores_visit_frequency

#   # a voir s'il faut definir une frequence pour chaque magasin ou bien juste faire une alerte (avec un status)
#     frequency = 0
#     average_frequence_visit = 0
#     if stores.visit > 0
#       stores.each do |store|
#         if store.visit_date != nil
#         frequency += store.visit_date - store.purchase_date
#         end
#       end
#       average_frequency = ((frequency / stores.count) / 365 )* 12
#     end
#     average_frequency
#   end
end
