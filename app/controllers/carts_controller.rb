class CartsController < ApplicationController
<<<<<<< HEAD
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

=======
  
  skip_before_filter :authorize, :only => [:create, :update, :destroy]
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
<<<<<<< HEAD
=======

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carts }
    end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
<<<<<<< HEAD
  end

  # GET /carts/new
  def new
    @cart = Cart.new
=======
    begin
      @cart = Cart.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, :notice => 'Invalid Cart!'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @cart }
    end
  end
  end

  # GET /carts/new
  # GET /carts/new.json
  def new
    @cart = Cart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cart }
    end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end

  # GET /carts/1/edit
  def edit
<<<<<<< HEAD
=======
    @cart = Cart.find(params[:id])
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end

  # POST /carts
  # POST /carts.json
  def create
<<<<<<< HEAD
    @cart = Cart.new(cart_params)
=======
    @cart = Cart.new(params[:cart])
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
<<<<<<< HEAD
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
=======
        format.json { render json: @cart, status: :created, location: @cart }
      else
        format.html { render action: "new" }
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
=======
  # PUT /carts/1
  # PUT /carts/1.json
  def update
    @cart = Cart.find(params[:id])

    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
<<<<<<< HEAD
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to store_url }
      format.json { head :no_content }
    end
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params[:cart]
    end
    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, notice: 'Invalid cart'
    end
=======
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil

    respond_to do |format|
      format.html { redirect_to store_url}
      format.json { head :no_content }
      format.js
    end
  end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
end
