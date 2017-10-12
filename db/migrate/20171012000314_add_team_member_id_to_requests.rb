class AddTeamMemberIdToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :team_member_id, :integer
  end
end
