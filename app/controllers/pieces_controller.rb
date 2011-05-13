class PiecesController < ApplicationController
  before_filter :authenticate_user!
  # GET /users/1/pieces
  # GET /personnes/1/pieces.xml
  def index
    @personne = User.find(params[:user_id])
    @pieces = @personne.pieces

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pieces }
    end
  end

  # GET /personnes/1/pieces/1
  # GET /personnes/1/pieces/1.xml
  def show
    @personne = User.find(params[:user_id])
    @piece = @personne.pieces.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @piece }
    end
  end

  # GET /personnes/1/pieces/new
  # GET /personnes/1/pieces/new.xml

  def new
    @personne = User.find(params[:user_id])
    @piece = @personne.pieces.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @piece }
    end
  end

  # GET /personnes/1/pieces/1/edit
  def edit
    @personne = User.find(params[:user_id])
    @piece = @personne.pieces.find(params[:id])
  end

  # POST /personnes/1/pieces
  # POST /personnes/1/pieces.xml
  def create
    @personne = User.find(params[:user_id])
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
    @personne = User.find(params[:user_id])
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
    @personne = User.find(params[:user_id])
    @piece = @personne.pieces.find(params[:id])
    @piece.destroy

    respond_to do |format|
      format.html { redirect_to(user_pieces_url) }
      format.xml  { head :ok }
    end
  end

 #acheter un produit
  def buy 
    @piece = Piece.find(params[:id])

    @piece.stock = @piece.stock-1

    @piece.save

    redirect_to root_path, :notice => "Product was seccessfully bought!"
  end
end
