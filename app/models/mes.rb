class Mes < ApplicationRecord
    devise:database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
