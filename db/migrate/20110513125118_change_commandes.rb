class ChangeCommandes < ActiveRecord::Migration
  def self.up
    rename_column :commandes, :id_pers, :user_id
  end

  def self.down
  end
end
