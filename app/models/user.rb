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

  # def drives
  #   vehicules.map do |vehicule|
  #     vehicule

  # end
end
