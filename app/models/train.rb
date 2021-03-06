class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  def count_seats_by_type(carriage_type, seats_type)
    carriages.where(type: carriage_type).sum(seats_type)
  end

  def count_carriages_by_type(carriage_type)
    carriages.where(type: carriage_type).count
  end
end
