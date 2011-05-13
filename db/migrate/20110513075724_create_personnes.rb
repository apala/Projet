class CreatePersonnes < ActiveRecord::Migration
  def self.up
    create_table :personnes do |t|
      t.integer :id
      t.string :nom
      t.string :prenom
      t.string :mail
      t.string :tel
      t.string :adresse
      t.string :login
      t.string :pass
      t.integer :id_role

      t.timestamps
    end
  end

  def self.down
    drop_table :personnes
  end
end
