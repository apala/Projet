class Commande < ActiveRecord::Base

belongs_to :personne
has_many :piecescommande

end
