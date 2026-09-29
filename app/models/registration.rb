class Registration < ApplicationRecord

  belongs_to :user
  belongs_to :event

  enum :status, { pending: 'pending', confirmed: 'confirmed', canceled: 'canceled', waitlisted: 'waitlisted', rejected: 'rejected' }

  validates :user_id, uniqueness: { scope: :event_id, message: "você já está registrado neste evento" }
end
