class Registration < ApplicationRecord

  belongs_to :user
  belongs_to :event

  enum :status, { pending: 'pending', confirmed: 'confirmed', canceled: 'canceled', waitlisted: 'waitlisted', rejected: 'rejected' }
end
