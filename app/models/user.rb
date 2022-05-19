class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :quizzes


         validates :nickname, presence: true

         e_password = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates_format_of :password, with: e_password

end
