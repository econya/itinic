class Technology < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: {case_sensitive: false}

  enum kind: {
    programming_language: 1,
    framework:            2,
    skill:                3,
    application:          4,
    technology:           5,
    os:                   6
  }
end
