class Proficiency < ActiveRecord::Base
  validates :years, presence: true
  validates_inclusion_of :formal, in: [true, false]

  belongs_to :user
  belongs_to :skill



end
