class Route < ApplicationRecord
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  validates :name, presence: true
  validate :railway_stations_count

  before_validation :set_name

  private

  def set_name
    if railway_stations.size > 0 && self.name.blank?
      self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}"
    end
  end

  def railway_stations_count
    if railway_stations.size < 2
      errors.add(:base, 'Route should contain at least 2 stations')
    end
  end
end
