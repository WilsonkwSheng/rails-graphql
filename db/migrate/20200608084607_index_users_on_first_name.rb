class IndexUsersOnFirstName < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_index :users, :first_name, algorithm: :concurrently
  end
end
