class House < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  has_many :stations
  accepts_nested_attributes_for :stations
end
