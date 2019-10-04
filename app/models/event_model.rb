class EventModel < ApplicationRecord
  belongs_to :model
  belongs_to :event

  def event_models
    EventModel.joins(:events, :users).where(event_models: {event_model_id: self.id})
  end 
  

end
