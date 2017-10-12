class Request < ApplicationRecord
  belongs_to :user
  belongs_to :team_member, optional: true

  # Callbacks
  # before_validation :set_rate

protected

  def set_rate
    self.rate = team_member.rate
  end
end
