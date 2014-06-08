require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  fixtures :products

  # A user goes to the index page. They select a product, adding it to their
  # cart, and check out, filling in their details on the checkout form. When
  # they submit, an order is created containing their information, along with a
  # single line item corresponding to the product they added to their cart.
=======
  
  fixtures :products
  # test "the truth" do
  #   assert true
  # end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  
  test "buying a product" do
    LineItem.delete_all
    Order.delete_all
<<<<<<< HEAD
    ruby_book = products(:ruby)

=======
    ruby_book products(:ruby)
    
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    get "/"
    assert_response :success
    assert_template "index"
    
<<<<<<< HEAD
    xml_http_request :post, '/line_items', product_id: ruby_book.id
    assert_response :success 
=======
    xml_http_request :post '/line_items', :product_id => ruby_book.id
    assert_response :success
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    
    cart = Cart.find(session[:cart_id])
    assert_equal 1, cart.line_items.size
    assert_equal ruby_book, cart.line_items[0].product
    
<<<<<<< HEAD
    get "/orders/new"
=======
    get '/orders/new'
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    assert_response :success
    assert_template "new"
    
    post_via_redirect "/orders",
<<<<<<< HEAD
                      order: { name:     "Dave Thomas",
                               address:  "123 The Street",
                               email:    "dave@example.com",
                               pay_type: "Check" }
    assert_response :success
    assert_template "index"
=======
                      :order => {
                        :name => "Dave Thomas",
                        :address => "123 The Street",
                        :email => "dave@example.com",
                        :pay_type => "Check"
                      }
                      
    assert_response :success
    assert_tempate :index
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    cart = Cart.find(session[:cart_id])
    assert_equal 0, cart.line_items.size
    
    orders = Order.all
    assert_equal 1, orders.size
    order = orders[0]
    
<<<<<<< HEAD
    assert_equal "Dave Thomas",      order.name
    assert_equal "123 The Street",   order.address
    assert_equal "dave@example.com", order.email
    assert_equal "Check",            order.pay_type
=======
    assert_equal "Dave Thomas", order.name
    assert_equal "123 The Street", order.address
    assert_equal "dave@example.com", order.email
    assert_equal "Check", order.pay_type
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    
    assert_equal 1, order.line_items.size
    line_item = order.line_items[0]
    assert_equal ruby_book, line_item.product
<<<<<<< HEAD

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["dave@example.com"], mail.to
    assert_equal 'Sam Ruby <depot@example.com>', mail[:from].value
=======
    
    mail = ActionMailer::Base.deliveries.last
    assert_equal ["dave@example.com"], mail.to
    assert_equal 'kevin@kevincollignon.com', mail[:from].value
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
  end
end
