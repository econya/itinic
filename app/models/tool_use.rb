class ToolUse < ActiveRecord::Base
  belongs_to :community, inverse_of: :tool_uses
  belongs_to :technology, inverse_of: :tool_uses

  validates :community, presence: true
  validates :technology, presence: true

  delegate :name, to: :community, prefix: true
  delegate :name, to: :technology, prefix: true

  enum task: {
    financial:             10,
    communication:         20,
    web_presence:          30,
    seminar_management:    40,
    internal_organization: 50,
    room_planning:         60,
    membership_management: 70
  }

  enum assessment: {
    bad:       10,
    works:     20,
    good:      30,
    excellent: 40
  }
end
