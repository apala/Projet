class CreateCommandes < ActiveRecord::Migration
  def self.up
    create_table :commandes do |t|
      t.integer :id
      t.date :date
      t.integer :qte
      t.integer :id_pers

      t.timestamps
    end
  end

  def self.down
    drop_table :commandes
  end
end
