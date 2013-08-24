require 'test_helper'

class ConferenceArticlesControllerTest < ActionController::TestCase
  setup do
    @conference_article = conference_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conference_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conference_article" do
    assert_difference('ConferenceArticle.count') do
      post :create, conference_article: {  }
    end

    assert_redirected_to conference_article_path(assigns(:conference_article))
  end

  test "should show conference_article" do
    get :show, id: @conference_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conference_article
    assert_response :success
  end

  test "should update conference_article" do
    patch :update, id: @conference_article, conference_article: {  }
    assert_redirected_to conference_article_path(assigns(:conference_article))
  end

  test "should destroy conference_article" do
    assert_difference('ConferenceArticle.count', -1) do
      delete :destroy, id: @conference_article
    end

    assert_redirected_to conference_articles_path
  end
end
