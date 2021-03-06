class ProductsController < ApplicationController
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
    @category = Category.find(params[:category_id])
  end

  def show
  end

  def new
  end

  def edit
    if product.user != current_user
      redirect_to category_product_url(category, product)
      flash[:error] = 'You are not allowed to edit this product.'
    end
  end

  def create
    if current_user
      self.product = Product.new(product_params)
      product.user_id = current_user.id
      if product.save
        category.products << product
        redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
      else
        render action: 'new'
      end
    else
      redirect_to new_user_session_path
    end
  end

  def update
    if current_user
      if current_user == product.user
        if self.product.update(product_params)
          redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
        else
          render action: 'edit'
        end
      else
        redirect_to category_product_url(category, product)
        flash[:error] = 'You are not allowed to edit this product.'
      end
    else
      redirect_to new_user_session_path
    end
  end

  # DELETE /products/1
  def destroy
    if current_user
      product.destroy
      redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
    else
      redirect_to new_user_session_path
    end
  end
  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id, :user_id)
  end
end
