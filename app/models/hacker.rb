class Hacker < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  belongs_to :user

  validates :first_name, presence: true, if: Proc.new {|h| h.alias.blank? }

  before_save :strip_text_fields

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
