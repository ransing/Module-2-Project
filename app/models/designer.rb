class Designer < ApplicationRecord
    has_many :events
    has_many :users, through: :events
    has_many :event_models, through: :events 
    has_many :models, through: :events
end
