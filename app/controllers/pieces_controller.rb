class PiecesController < ApplicationController
  # GET /personnes/1/pieces
  # GET /personnes/1/pieces.xml
  def index
    @personne = Personne.find(params[:personne_id])
    @pieces = @personne.pieces

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pieces }
    end
  end

  # GET /personnes/1/pieces/1
  # GET /personnes/1/pieces/1.xml
  def show
    @personne = Personne.find(params[:personne_id])
    @piece = @personne.pieces.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @piece }
    end
  end

  # GET /personnes/1/pieces/new
  # GET /personnes/1/pieces/new.xml
  def new
    @personne = Personne.find(params[:personne_id])
    @piece = @personne.pieces.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @piece }
    end
  end

  # GET /personnes/1/pieces/1/edit
  def edit
    @personne = Personne.find(params[:personne_id])
    @piece = @personne.pieces.find(params[:id])
  end

  # POST /personnes/1/pieces
  # POST /personnes/1/pieces.xml
  def create
    @personne = Personne.find(params[:personne_id])
    @piece = @personne.pieces.build(params[:piece])

    respond_to do |format|
      if @piece.save
        format.html { redirect_to([@personne, @piece], :notice => 'Piece was successfully created.') }
        format.xml  { render :xml => @piece, :status => :created, :location => @piece }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @piece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personnes/1/pieces/1
  # PUT /personnes/1/pieces/1.xml
  def update
    @personne = Personne.find(params[:personne_id])
    @piece = @personne.pieces.find(params[:id])

    respond_to do |format|
      if @piece.update_attributes(params[:piece])
        format.html { redirect_to([@personne, @piece], :notice => 'Piece was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @piece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personnes/1/pieces/1
  # DELETE /personnes/1/pieces/1.xml
  def destroy
    @personne = Personne.find(params[:personne_id])
    @piece = @personne.pieces.find(params[:id])
    @piece.destroy

    respond_to do |format|
      format.html { redirect_to(personne_pieces_url) }
      format.xml  { head :ok }
    end
  end
end
