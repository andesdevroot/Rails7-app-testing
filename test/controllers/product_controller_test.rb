require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products'do
    get products_path

    assert_response :success
    assert_select '.product', 2  #vamos a crear y esperar 2 productos

  end

  test 'render a detailed product page 'do
    get products_path(products(:ps4))

    assert_response :success
    assert_select '.title', 'PS4 Fat'
    assert_select '.descripcion', 
  end
end

