# Clase Modelo para los usuarios de la app.
class User < ApplicationRecord
  # frozen_string_literal: true
  has_secure_password
  validates :username, uniqueness: 'true'
end
