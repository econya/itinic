class CommunityInvolvement < ActiveRecord::Base
  belongs_to :hacker
  belongs_to :community

  validates :community, presence: true
  validates :hacker,    presence: true

  delegate :name, to: :hacker, prefix: true
  delegate :name, to: :community, prefix: true

  enum kind: {
    technical_lead: 10,
    technical_team: 20,
    inhabitant:     30,
    orbiter:        40,
    other:          50
  }
end
