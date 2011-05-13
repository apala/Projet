class ChangePieces < ActiveRecord::Migration
  def self.up
    rename_column :pieces, :id_pers, :user_id
  end

  def self.down
  end
end
