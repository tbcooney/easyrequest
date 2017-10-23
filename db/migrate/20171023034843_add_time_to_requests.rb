class AddTimeToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :time, :time
  end
end
