class Community < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :community_involvements, inverse_of: :community, dependent: :restrict_with_exception
  has_many :hackers, through: :community_involvements, inverse_of: :communities

  has_many :tool_uses, inverse_of: :community, dependent: :restrict_with_exception
  has_many :technologies, through: :tool_uses, inverse_of: :communities

  accepts_nested_attributes_for :tool_uses, allow_destroy: true, reject_if: :all_blank
end
