class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :validatable

  private

    def self.ransackable_attributes(auth_object = nil)
      # ["confirmation_sent_at", "confirmation_token", "confirmed_at", "created_at", "email", "encrypted_password", "id", "id_value", "remember_created_at", "reset_password_sent_at", "reset_password_token", "unconfirmed_email", "updated_at"]
      authorizable_ransackable_attributes
    end
end
