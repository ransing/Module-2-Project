class Model < ApplicationRecord
    has_many :event_models
    has_many :events, through: :event_models
end
