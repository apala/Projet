class AddColumnUser < ActiveRecord::Migration
  def self.up
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :tel, :string
    add_column :users, :adresse, :string
  end

  def self.down
  end
end
