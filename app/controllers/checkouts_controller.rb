class CheckoutsController < ApplicationController
  before_action :set_checkout, only: [:show, :edit, :update, :destroy]

  # GET /checkouts
  def index
    @checkouts = Checkout.all
  end

  # GET /checkouts/1
  def show
  end

  # GET /checkouts/new
  def new
    @checkout = Checkout.new
    if params[:book_id]
      @checkout.book = Book.find(params[:book_id])
    end
    # @book = Book.find(params[:book_id])
  end

  # GET /checkouts/1/edit
  def edit
  end

  # POST /checkouts
  def create
    @checkout = Checkout.new(checkout_params)

    respond_to do |format|
      if @checkout.save
        @checkout.book.let_out
        format.html { redirect_to @checkout, notice: 'Checkout was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /checkouts/1
  def update
    respond_to do |format|
      if @checkout.update(checkout_params)
        @checkout.book.back_in
        format.html { redirect_to @checkout, notice: 'Checkout was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /checkouts/1
  def destroy
    @checkout.destroy
    respond_to do |format|
      format.html { redirect_to checkouts_url, notice: 'Checkout was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkout
      @checkout = Checkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkout_params
      params.require(:checkout).permit(:patron_id, :book_id, :check_out_by, :check_in_by)
    end
end
