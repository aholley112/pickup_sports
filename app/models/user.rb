class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates: :email, presence: true
    validates: :first_name, presence: true
    validates: :last_name, presence: true
end
