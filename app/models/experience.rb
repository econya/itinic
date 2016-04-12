class Experience < ActiveRecord::Base
  belongs_to :hacker
  belongs_to :technology

  delegate :name, to: :technology, prefix: true
  delegate :name, to: :hacker,     prefix: true

  validates :technology, presence: true
  validates :hacker, presence: true

  enum level: {
    novice:       10,
    intermediate: 20,
    advanced:     30,
    wizard:       40
  }
  enum assessment: {
    bad:       10,
    works:     20,
    good:      30,
    excellent: 40
  }
end
