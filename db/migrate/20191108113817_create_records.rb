class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.datetime :start_time
      t.datetime :stop_time
      t.integer :user_id

      t.timestamps
    end
  end
end
