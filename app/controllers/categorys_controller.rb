class CategorysController < ApplicationController
  load_and_authorize_resource

  def index
    @categorys = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @user = current_user
    @category = Category.new(category_params)
    @category.author = @user

    if @category.save
      flash[:sucess] = 'group successfully Created'
      redirect_to categorys_path
    else
      flash.now[:error] = 'error creating group, please try again'
      render new_category_path
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
