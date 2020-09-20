class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  def add_product_to_cart
    cart = assign_product
    render json: current_user.errors unless cart
    if cart && cart.save  # Adding product to user's cart
      render json: {"mesage": "Product added to cart successfully"}
    elsif cart
      render json: {"error": "This product is not in the list !"}
    end
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  def get_cart_details
    @carts = current_user.products
    render json: @carts
  end

  private
    def assign_product
      check_cart
      return if current_user.errors.messages.present?     # checking if product is already into user's cart
      cart = Cart.new
      cart.product = Product.find_by_name(params["products"]["name"])
      cart.user = current_user
      cart
    end

    def check_cart
       product = Product.find_by_name params["products"]["name"]
       current_user.errors.add(:cart, "Product is already in the card") if Cart.where(user: current_user, product: product).present?
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
