class TeamMember < ApplicationRecord
  has_many :requests

  def full_name
    [first_name, last_name].join(' ')
  end
end
