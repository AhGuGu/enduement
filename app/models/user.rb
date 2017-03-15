class User < ApplicationRecord
  has_many :unit_trusts, dependent: :destroy

  validates :salutation,
  presence: true

  validates :first_name,
  presence: true

  validates :last_name,
  presence: true

  validates :dob,
  presence: true

  validates :ContactNumber,
  presence: true,
  numericality: true,
  length: { :minimum => 8, :maximum => 8 }

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false},
  format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password,
  length: { in: 8..72 },
  on: :create

  has_secure_password

  def self.find_and_authenticate_user(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end
end
