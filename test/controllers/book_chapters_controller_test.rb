require 'test_helper'

class BookChaptersControllerTest < ActionController::TestCase
  setup do
    @book_chapter = book_chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_chapter" do
    assert_difference('BookChapter.count') do
      post :create, book_chapter: {  }
    end

    assert_redirected_to book_chapter_path(assigns(:book_chapter))
  end

  test "should show book_chapter" do
    get :show, id: @book_chapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_chapter
    assert_response :success
  end

  test "should update book_chapter" do
    patch :update, id: @book_chapter, book_chapter: {  }
    assert_redirected_to book_chapter_path(assigns(:book_chapter))
  end

  test "should destroy book_chapter" do
    assert_difference('BookChapter.count', -1) do
      delete :destroy, id: @book_chapter
    end

    assert_redirected_to book_chapters_path
  end
end
