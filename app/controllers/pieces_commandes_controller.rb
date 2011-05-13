class PiecesCommandesController < ApplicationController
  # GET /pieces_commandes
  # GET /pieces_commandes.xml
  def index
    @pieces_commandes = PiecesCommande.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pieces_commandes }
    end
  end

  # GET /pieces_commandes/1
  # GET /pieces_commandes/1.xml
  def show
    @pieces_commande = PiecesCommande.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pieces_commande }
    end
  end

  # GET /pieces_commandes/new
  # GET /pieces_commandes/new.xml
  def new
    @pieces_commande = PiecesCommande.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pieces_commande }
    end
  end

  # GET /pieces_commandes/1/edit
  def edit
    @pieces_commande = PiecesCommande.find(params[:id])
  end

  # POST /pieces_commandes
  # POST /pieces_commandes.xml
  def create
    @pieces_commande = PiecesCommande.new(params[:pieces_commande])

    respond_to do |format|
      if @pieces_commande.save
        format.html { redirect_to(@pieces_commande, :notice => 'Pieces commande was successfully created.') }
        format.xml  { render :xml => @pieces_commande, :status => :created, :location => @pieces_commande }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pieces_commande.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pieces_commandes/1
  # PUT /pieces_commandes/1.xml
  def update
    @pieces_commande = PiecesCommande.find(params[:id])

    respond_to do |format|
      if @pieces_commande.update_attributes(params[:pieces_commande])
        format.html { redirect_to(@pieces_commande, :notice => 'Pieces commande was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pieces_commande.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pieces_commandes/1
  # DELETE /pieces_commandes/1.xml
  def destroy
    @pieces_commande = PiecesCommande.find(params[:id])
    @pieces_commande.destroy

    respond_to do |format|
      format.html { redirect_to(pieces_commandes_url) }
      format.xml  { head :ok }
    end
  end
end
