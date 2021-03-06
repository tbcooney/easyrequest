class CreateTeamMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_members do |t|
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.string :rate

      t.timestamps
    end
  end
end
