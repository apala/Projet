class AddUserIdToPersonnes < ActiveRecord::Migration
  def self.up
    add_column :personnes, :user_id, :integer
  end

  def self.down
    remove_column :personnes, :user_id
  end
end
