class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_many :vehicules
  has_many :appointments
  has_many :stores, through: :appointments

  def drives
    vehicules.map do |vehicule|
      vehicule

  end
end
