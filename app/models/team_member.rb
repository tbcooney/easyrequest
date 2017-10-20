class TeamMember < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/default_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def full_name
    [first_name, last_name].join(' ')
  end
end
