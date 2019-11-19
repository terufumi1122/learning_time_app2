class DestroyDailyRecordTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :daily_records
  end
end
