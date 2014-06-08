class ProductsController < ApplicationController
<<<<<<< HEAD
  before_action :set_product, only: [:show, :edit, :update, :destroy]

=======
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
<<<<<<< HEAD
=======

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end

  # GET /products/1
  # GET /products/1.json
  def show
<<<<<<< HEAD
  end

  # GET /products/new
  def new
    @product = Product.new
=======
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end

  # GET /products/1/edit
  def edit
<<<<<<< HEAD
=======
    @product = Product.find(params[:id])
  end
  
  def who_bought
    @product = Product.find(params[:id])
    
    respond_to do |format|
      format.atom
      format.json { render json: @product }
      format.xml { render xml: @product }
    end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end

  # POST /products
  # POST /products.json
  def create
<<<<<<< HEAD
    @product = Product.new(product_params)
=======
    @product = Product.new(params[:product])
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
<<<<<<< HEAD
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
=======
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
=======
  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
<<<<<<< HEAD
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def who_bought
    @product = Product.find(params[:id])
    @latest_order = @product.orders.order(:updated_at).last
    if stale?(@latest_order)
      respond_to do |format|
        format.atom
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
=======
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
end
