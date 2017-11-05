class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :edit, :update, :destroy]
      
        # GET /cards
        # GET /cards.json
  def index
    @decks = Deck.all
  end
      
        # GET /cards/1
        # GET /cards/1.json
  def show
  end
      
   
  def new
    @deck = Deck.new
  end
      
  
  def edit
  end



  def create
    @deck = Deck.new(deck_params)

    respond_to do |format|
      if @deck.save
        format.html { redirect_to @deck, notice: 'The Deck was successfully created.' }
        format.json { render action: 'show', status: :created, location: @deck }
      else
        format.html { render action: 'new' }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @deck.update(deck_params)
        format.html { redirect_to @deck, notice: 'The Deck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
   
    redirect_to decks_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_deck
    @deck = Deck.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def deck_params
    params.require(:deck).permit(:cardID, :deckID, :dateCreated, :deckName, :deckType, :deckDescription,:totalCards)
  end


end
