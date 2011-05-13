class CreatePiecesCommandes < ActiveRecord::Migration
  def self.up
    create_table :pieces_commandes do |t|
      t.integer :id_commande
      t.integer :id_piece

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces_commandes
  end
end
