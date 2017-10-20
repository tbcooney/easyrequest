class AddUserIdToTeamMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :team_members, :user_id, :integer
  end
end
