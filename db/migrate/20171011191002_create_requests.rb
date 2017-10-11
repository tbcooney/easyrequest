class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :description
      t.integer :number_of_trucks
      t.string :address
      t.datetime :date
      t.string :rate

      t.timestamps
    end
  end
end
