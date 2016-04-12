class Hacker < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  belongs_to :user

  has_many :community_involvements, inverse_of: :hacker,
    dependent: :restrict_with_exception
  has_many :communities, through: :community_involvements,
    inverse_of: :hackers

  has_many :experiences, inverse_of: :hacker

  validates :first_name, presence: true, if: Proc.new {|h| h.alias.blank? }

  before_save :strip_text_fields

  accepts_nested_attributes_for :community_involvements, allow_destroy: true, reject_if: :all_blank

  def name
    if self.alias.present?
      self.alias
    else
      "#{first_name} #{last_name}"
    end
  end

  def slug_candidates
    [
      :alias,
      :name
    ]
  end

  def strip_text_fields
    self.first_name.try(:strip!)
    self.last_name.try(:strip!)
    self.alias.try(:strip!)
  end
end
