require 'application_system_test_case'

class BabyProductsTest < ApplicationSystemTestCase
  setup do
    @baby_product = baby_products(:one)
  end

  test 'visiting the index' do
    visit baby_products_url
    assert_selector 'h1', text: 'Baby products'
  end

  test 'should create baby product' do
    visit baby_products_url
    click_on 'New baby product'

    click_on 'Create Baby product'

    assert_text 'Baby product was successfully created'
    click_on 'Back'
  end

  test 'should update Baby product' do
    visit baby_product_url(@baby_product)
    click_on 'Edit this baby product', match: :first

    click_on 'Update Baby product'

    assert_text 'Baby product was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Baby product' do
    visit baby_product_url(@baby_product)
    click_on 'Destroy this baby product', match: :first

    assert_text 'Baby product was successfully destroyed'
  end
end
