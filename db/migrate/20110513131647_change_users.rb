class ChangeUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :personne_id
  end

  def self.down
  end
end
