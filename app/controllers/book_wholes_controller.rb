class BookWholesController < ApplicationController
  before_action :set_book_whole, only: [:show, :edit, :update, :destroy]

  # GET /book_wholes
  # GET /book_wholes.json
  def index
    @book_wholes = BookWhole.all
  end

  # GET /book_wholes/1
  # GET /book_wholes/1.json
  def show
  end

  # GET /book_wholes/new
  def new
    @book_whole = BookWhole.new
  end

  # GET /book_wholes/1/edit
  def edit
  end

  # POST /book_wholes
  # POST /book_wholes.json
  def create
    @book_whole = BookWhole.new(book_whole_params)

    respond_to do |format|
      if @book_whole.save
        format.html { redirect_to @book_whole, notice: 'Book whole was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_whole }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_whole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_wholes/1
  # PATCH/PUT /book_wholes/1.json
  def update
    respond_to do |format|
      if @book_whole.update(book_whole_params)
        format.html { redirect_to @book_whole, notice: 'Book whole was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_whole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_wholes/1
  # DELETE /book_wholes/1.json
  def destroy
    @book_whole.destroy
    respond_to do |format|
      format.html { redirect_to book_wholes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_whole
      @book_whole = BookWhole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_whole_params
      params[:book_whole]
    end
end
