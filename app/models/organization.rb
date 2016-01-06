class Organization < ActiveRecord::Base
  validates :name, presence: true
  validates :school, presence: true
  validates :logo, presence: true
  validates :color, presence: true
  validates :motto, presence: true
end
