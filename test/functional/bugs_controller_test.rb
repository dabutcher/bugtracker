require 'test_helper'

class BugsControllerTest < ActionController::TestCase
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post :create, bug: { bugdescription: @bug.bugdescription, bugtitle: @bug.bugtitle, created_at: @bug.created_at, created_by: @bug.created_by, fileuploadpath: @bug.fileuploadpath, updated_at: @bug.updated_at, updated_by: @bug.updated_by }
    end

    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should show bug" do
    get :show, id: @bug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bug
    assert_response :success
  end

  test "should update bug" do
    put :update, id: @bug, bug: { bugdescription: @bug.bugdescription, bugtitle: @bug.bugtitle, created_at: @bug.created_at, created_by: @bug.created_by, fileuploadpath: @bug.fileuploadpath, updated_at: @bug.updated_at, updated_by: @bug.updated_by }
    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete :destroy, id: @bug
    end

    assert_redirected_to bugs_path
  end
end
