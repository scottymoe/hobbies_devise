class Slope < ApplicationRecord
  belongs_to :user

  def info
    "#{self.name} - #{self.difficulty} - #{self.length}"
  end
end
