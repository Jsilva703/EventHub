class Event < ApplicationRecord

  enum :status, { draft: 'draft', published: 'published', canceled: 'canceled', finished: 'finished' }

  validates :status, presence: true
  validates :local, presence: true
  validates :data, presence: true
  validates :title, presence: true
  validates :capacity, presence: true
  validates :occupied_count, presence: true
end
