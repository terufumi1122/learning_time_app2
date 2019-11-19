class RemoveGrandTotalFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :grand_total, :integer
  end
end
