class Event < ApplicationRecord
  has_many :event_models, dependent: :destroy
  has_many :models, through: :event_models
  belongs_to :user
  belongs_to :designer

  # Event.joins(:events_models).where(event_models: {model_id: model.id})

end
