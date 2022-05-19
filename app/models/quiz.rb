class Quiz < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :problem, presence: true
  validates :answer1, presence: true
  validates :answer2, presence: true
  validates :answer3, presence: true
  validates :answer4, presence: true
  validates :answer_number, presence: true



end
