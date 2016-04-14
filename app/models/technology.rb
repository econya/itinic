class Technology < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :experiences, inverse_of: :technology

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :kind, presence: true

  enum kind: {
    programming_language: 1,
    framework:            2,
    skill:                3,
    application:          4,
    technology:           5,
    os:                   6,
    hardware:             7
  }
end
