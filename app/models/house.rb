class House < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, reject_if: :reject_blank, allow_destroy: true

  def reject_blank(attributes)
    if attributes[:id]
      attributes.merge!(_destroy: "1") if attributes[:route_name].blank? and attributes[:station_name].blank? and attributes[:minuites].blank?
      !attributes[:route_name].blank? and attributes[:station_name].blank? and attributes[:minuites].blank?
    else
      attributes[:route_name].blank? and attributes[:station_name].blank? and attributes[:minuites].blank?
    end
  end
end