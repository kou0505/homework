class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 25 }
    has_secure_password
end
