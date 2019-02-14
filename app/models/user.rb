# Clase Modelo para los usuarios de la app.
class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: 'true'
end
