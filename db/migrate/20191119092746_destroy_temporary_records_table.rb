class DestroyTemporaryRecordsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :temporary_records
  end
end
