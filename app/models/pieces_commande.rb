class PiecesCommande < ActiveRecord::Base

belongs_to :commande
belongs_to :piece

end
