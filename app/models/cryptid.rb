class Cryptid < ApplicationRecord
    has_many :encounters
    has_many :users, through: :encounters

    has_many :appearances
end
