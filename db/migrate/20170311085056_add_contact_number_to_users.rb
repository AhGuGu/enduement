class AddContactNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ContactNumber, :integer
  end
end
