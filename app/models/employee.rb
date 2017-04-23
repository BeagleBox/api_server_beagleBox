class Employee < ApplicationRecord

  belongs_to :departament
  accepts_nested_attributes_for :departament

  #attr_accessor :name
  has_secure_password

  validates :registration, uniqueness: true, presence: true, length:{in: 9..9}
  validates :name, presence: true , length:{in: 3..40}
  validates :password, presence: true, length:{in: 4..8}

  # validates :name, presence: true, length:{in: 5..80}
  # validates :email, confirmation: true, presence: true, uniqueness: true
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates :email_confirmation, presence: true
  # validates :password, presence: true, on: :create
  # has_many :books, dependent: :destroy


end
