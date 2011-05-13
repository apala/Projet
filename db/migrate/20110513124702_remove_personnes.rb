class RemovePersonnes < ActiveRecord::Migration
  def self.up
    drop_table :personnes
  end

  def self.down
  end
end
