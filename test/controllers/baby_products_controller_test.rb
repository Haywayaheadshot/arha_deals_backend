require 'test_helper'

class BabyProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby_product = baby_products(:one)
  end

  test 'should get index' do
    get baby_products_url
    assert_response :success
  end

  test 'should get new' do
    get new_baby_product_url
    assert_response :success
  end

  test 'should create baby_product' do
    assert_difference('BabyProduct.count') do
      post baby_products_url, params: { baby_product: {} }
    end

    assert_redirected_to baby_product_url(BabyProduct.last)
  end

  test 'should show baby_product' do
    get baby_product_url(@baby_product)
    assert_response :success
  end

  test 'should get edit' do
    get edit_baby_product_url(@baby_product)
    assert_response :success
  end

  test 'should update baby_product' do
    patch baby_product_url(@baby_product), params: { baby_product: {} }
    assert_redirected_to baby_product_url(@baby_product)
  end

  test 'should destroy baby_product' do
    assert_difference('BabyProduct.count', -1) do
      delete baby_product_url(@baby_product)
    end

    assert_redirected_to baby_products_url
  end
end
