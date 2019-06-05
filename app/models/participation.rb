class Participation < ApplicationRecord
  # RATINGS = [1, 2, 3, 4, 5]
  belongs_to :challenge
  belongs_to :user
  # validates :appreciation, :difficulty, inclusion: { in: RATINGS }

  def validated?
    (!difficulty.nil? && !appreciation.nil? && !feedback.nil?)
  end
end
