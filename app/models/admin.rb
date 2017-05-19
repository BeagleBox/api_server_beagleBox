class Admin < ApplicationRecord

  has_secure_password

  validates :admin_registration, uniqueness: true, presence: true, length:{in: 9..9}
  validates :admin_name, presence: true , length:{in: 3..40}
  validates :password_digest, presence: true, length:{in: 4..8}
  validates :admin_email, confirmation: true, presence: true, uniqueness: true
  validates_format_of :admin_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
