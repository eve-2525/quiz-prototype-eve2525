require 'test_helper'

class QuizsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get quizs_index_url
    assert_response :success
  end

  test 'should get create' do
    get quizs_create_url
    assert_response :success
  end
end
