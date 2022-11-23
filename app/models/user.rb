class User < ApplicationRecord
  validates :username,
    presence: true,
    length: { in: 4..20 },
    uniqueness: {
      message: -> (_object, data) do
        "#{data[:value]} is already taken!"
      end
    }

  validates :email,
    presence: true,
    format: {
      with: /\A(|(([A-Za-z0-9]+_+)|(\+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/
    }

  validates :bio, length: { maximum: 500 }

  has_many :posts
  has_many :comments
end
