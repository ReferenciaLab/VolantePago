class AddColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipo, :string, :limit => 25
    add_column :users, :activo, :string, :limit => 1,:default => 'S'

  end
end
