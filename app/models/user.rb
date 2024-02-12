class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }
    validate :validate_username 
    validates :email, presence: true, uniqueness: true, length: { minimum: 5, maximum: 255 }, format: {
        with: URI::MailTo::EMAIL_REGEXP
    }
    validates :first_name, presence: true
    validates :last_name, presence: true

    # associations
    has_many :posts, dependent: :destroy
    has_one :profile, dependent: :destroy
    has_many :comments, dependent: :destroy 
    has_one :location, as: :locationable, dependent: :destroy

    after_create :create_profile
    # events that user has created

    has_many :created_events, class_name: 'Event', foreign_key: 'user_id' 

    # events that user is participating in

    has_many :event_participants
    has_many :events, through: :event_participants

    private
    def validate_username
        unless username =~ /\A[a-zA-Z0-9_]*[a-zA-Z][a-zA-Z0-9_]*\z/
            errors.add(:username, "can only contain letters, digits, or underscores and must start with a letter")
        end
    end
end
