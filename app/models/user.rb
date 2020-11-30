class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :votings, as: :votingalbe

  validates :full_name, presence: true, length: { maximum: 100 }

  enum role: { normal: 0, mode: 1, admin: 2}
end
