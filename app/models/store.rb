class Store < ApplicationRecord
  has_many :managers
  has_many :appointments
  has_many :users, through: :appointments

  validates :name, presence: true, length: { minimum: 3 }
  validates :group, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :phone, presence: true, format: { with: /^(0|\+33)[1-9]([-. ]?[0-9]{2}){4}$/, multiline: true}

end
