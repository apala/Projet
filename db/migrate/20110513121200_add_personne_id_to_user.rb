class AddPersonneIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :personne_id, :integer
  end

  def self.down
    remove_column :users, :personne_id
  end
end
