require 'test_helper'

class PublicationsControllerTest < ActionController::TestCase
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post :create, publication: { abstract: @publication.abstract, area: @publication.area, author: @publication.author, doi: @publication.doi, editor: @publication.editor, isbn: @publication.isbn, issn: @publication.issn, issue: @publication.issue, keywords: @publication.keywords, page: @publication.page, placeofpublication: @publication.placeofpublication, publication: @publication.publication, publisher: @publication.publisher, seriesissue: @publication.seriesissue, seriestitle: @publication.seriestitle, seriesvolume: @publication.seriesvolume, title: @publication.title, type: @publication.type, url: @publication.url, volume: @publication.volume, year: @publication.year }
    end

    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should show publication" do
    get :show, id: @publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publication
    assert_response :success
  end

  test "should update publication" do
    patch :update, id: @publication, publication: { abstract: @publication.abstract, area: @publication.area, author: @publication.author, doi: @publication.doi, editor: @publication.editor, isbn: @publication.isbn, issn: @publication.issn, issue: @publication.issue, keywords: @publication.keywords, page: @publication.page, placeofpublication: @publication.placeofpublication, publication: @publication.publication, publisher: @publication.publisher, seriesissue: @publication.seriesissue, seriestitle: @publication.seriestitle, seriesvolume: @publication.seriesvolume, title: @publication.title, type: @publication.type, url: @publication.url, volume: @publication.volume, year: @publication.year }
    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete :destroy, id: @publication
    end

    assert_redirected_to publications_path
  end
end
