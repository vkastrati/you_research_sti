class BookChaptersController < ApplicationController
  before_action :set_book_chapter, only: [:show, :edit, :update, :destroy]

  # GET /book_chapters
  # GET /book_chapters.json
  def index
    @book_chapters = BookChapter.all
  end

  # GET /book_chapters/1
  # GET /book_chapters/1.json
  def show
  end

  # GET /book_chapters/new
  def new
    @book_chapter = BookChapter.new
  end

  # GET /book_chapters/1/edit
  def edit
  end

  # POST /book_chapters
  # POST /book_chapters.json
  def create
    @book_chapter = BookChapter.new(book_chapter_params)

    respond_to do |format|
      if @book_chapter.save
        format.html { redirect_to @book_chapter, notice: 'Book chapter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_chapter }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_chapters/1
  # PATCH/PUT /book_chapters/1.json
  def update
    respond_to do |format|
      if @book_chapter.update(book_chapter_params)
        format.html { redirect_to @book_chapter, notice: 'Book chapter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_chapters/1
  # DELETE /book_chapters/1.json
  def destroy
    @book_chapter.destroy
    respond_to do |format|
      format.html { redirect_to book_chapters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_chapter
      @book_chapter = BookChapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_chapter_params
      params[:book_chapter]
    end
end
