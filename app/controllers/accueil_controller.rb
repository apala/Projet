class AccueilController < ApplicationController
  def index
    @pieces = Piece.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pieces }
    end
  end

end
