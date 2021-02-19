class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'

  validates :name, presence: true
  validates :place, presence: true
  validates :date, presence: true
end
