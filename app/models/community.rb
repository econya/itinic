class Community < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :community_involvements, inverse_of: :community, dependent: :restrict_with_exception
  has_many :hackers, through: :community_involvements, inverse_of: :communities
end
