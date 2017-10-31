class Request < ApplicationRecord
  belongs_to :user
  belongs_to :team_member, optional: true

  # Validations
  validates_presence_of :description, :date, :time

  # Callbacks
  before_validation :set_rate

protected

  def set_rate
    self.rate = team_member.rate if team_member.present?
  end
end
