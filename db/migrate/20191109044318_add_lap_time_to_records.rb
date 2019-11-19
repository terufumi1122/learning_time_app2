class AddLapTimeToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :lap_time, :integer
  end
end
