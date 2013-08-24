class ConferenceArticlesController < ApplicationController
  before_action :set_conference_article, only: [:show, :edit, :update, :destroy]

  # GET /conference_articles
  # GET /conference_articles.json
  def index
    @conference_articles = ConferenceArticle.all
  end

  # GET /conference_articles/1
  # GET /conference_articles/1.json
  def show
  end

  # GET /conference_articles/new
  def new
    @conference_article = ConferenceArticle.new
  end

  # GET /conference_articles/1/edit
  def edit
  end

  # POST /conference_articles
  # POST /conference_articles.json
  def create
    @conference_article = ConferenceArticle.new(conference_article_params)

    respond_to do |format|
      if @conference_article.save
        format.html { redirect_to @conference_article, notice: 'Conference article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @conference_article }
      else
        format.html { render action: 'new' }
        format.json { render json: @conference_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conference_articles/1
  # PATCH/PUT /conference_articles/1.json
  def update
    respond_to do |format|
      if @conference_article.update(conference_article_params)
        format.html { redirect_to @conference_article, notice: 'Conference article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @conference_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_articles/1
  # DELETE /conference_articles/1.json
  def destroy
    @conference_article.destroy
    respond_to do |format|
      format.html { redirect_to conference_articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference_article
      @conference_article = ConferenceArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conference_article_params
      params[:conference_article]
    end
end
