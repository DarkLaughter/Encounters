class Encounter < ApplicationRecord
  belongs_to :user
  belongs_to :cryptid
  has_many :comments
end
