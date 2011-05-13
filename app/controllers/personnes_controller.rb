class PersonnesController < ApplicationController
  # GET /personnes
  # GET /personnes.xml
  def index
    @personnes = Personne.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personnes }
    end
  end

  # GET /personnes/1
  # GET /personnes/1.xml
  def show
    @personne = Personne.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personne }
    end
  end

  # GET /personnes/new
  # GET /personnes/new.xml
  def new
    @personne = Personne.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personne }
    end
  end

  # GET /personnes/1/edit
  def edit
    @personne = Personne.find(params[:id])
  end

  # POST /personnes
  # POST /personnes.xml
  def create
    @personne = Personne.new(params[:personne])

    respond_to do |format|
      if @personne.save
        format.html { redirect_to(@personne, :notice => 'Personne was successfully created.') }
        format.xml  { render :xml => @personne, :status => :created, :location => @personne }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personne.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personnes/1
  # PUT /personnes/1.xml
  def update
    @personne = Personne.find(params[:id])

    respond_to do |format|
      if @personne.update_attributes(params[:personne])
        format.html { redirect_to(@personne, :notice => 'Personne was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personne.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personnes/1
  # DELETE /personnes/1.xml
  def destroy
    @personne = Personne.find(params[:id])
    @personne.destroy

    respond_to do |format|
      format.html { redirect_to(personnes_url) }
      format.xml  { head :ok }
    end
  end
end
