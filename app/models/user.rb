class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  scope :online, -> { where(online: true) }
  scope :all_except, ->(user) { where.not(id: user) }
end
