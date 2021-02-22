class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'

  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances

  validates :name, presence: true
  validates :place, presence: true
  validates :date, presence: true
end
