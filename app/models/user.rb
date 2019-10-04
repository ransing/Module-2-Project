class User < ApplicationRecord
    has_many :events
    has_many :designers, through: :events
    has_many :event_models, through: :events

    # validates :name, presence: true
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password_digest,  presence: true
    
    has_secure_password
    
    def models
        Model.joins(:event_models, :events).where(events: {user_id: self.id})
    end

   
end

