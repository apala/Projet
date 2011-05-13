class CommandesController < ApplicationController
  # GET /commandes
  # GET /commandes.xml
  def index
    @commandes = Commande.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commandes }
    end
  end

  # GET /commandes/1
  # GET /commandes/1.xml
  def show
    @commande = Commande.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commande }
    end
  end

  # GET /commandes/new
  # GET /commandes/new.xml
  def new
    @commande = Commande.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commande }
    end
  end

  # GET /commandes/1/edit
  def edit
    @commande = Commande.find(params[:id])
  end

  # POST /commandes
  # POST /commandes.xml
  def create
    @commande = Commande.new(params[:commande])

    respond_to do |format|
      if @commande.save
        format.html { redirect_to(@commande, :notice => 'Commande was successfully created.') }
        format.xml  { render :xml => @commande, :status => :created, :location => @commande }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commande.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commandes/1
  # PUT /commandes/1.xml
  def update
    @commande = Commande.find(params[:id])

    respond_to do |format|
      if @commande.update_attributes(params[:commande])
        format.html { redirect_to(@commande, :notice => 'Commande was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commande.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commandes/1
  # DELETE /commandes/1.xml
  def destroy
    @commande = Commande.find(params[:id])
    @commande.destroy

    respond_to do |format|
      format.html { redirect_to(commandes_url) }
      format.xml  { head :ok }
    end
  end
end
