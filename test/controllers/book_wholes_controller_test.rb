require 'test_helper'

class BookWholesControllerTest < ActionController::TestCase
  setup do
    @book_whole = book_wholes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_wholes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_whole" do
    assert_difference('BookWhole.count') do
      post :create, book_whole: {  }
    end

    assert_redirected_to book_whole_path(assigns(:book_whole))
  end

  test "should show book_whole" do
    get :show, id: @book_whole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_whole
    assert_response :success
  end

  test "should update book_whole" do
    patch :update, id: @book_whole, book_whole: {  }
    assert_redirected_to book_whole_path(assigns(:book_whole))
  end

  test "should destroy book_whole" do
    assert_difference('BookWhole.count', -1) do
      delete :destroy, id: @book_whole
    end

    assert_redirected_to book_wholes_path
  end
end
