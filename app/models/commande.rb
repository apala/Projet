class Commande < ActiveRecord::Base

belongs_to :user
has_many :piecescommande

end
