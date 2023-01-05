class ProceduresController < ApplicationController
  load_and_authorize_resource

  def new
    @procedure = Procedure.new
    @category = Category.find(params[:category_id])
  end

  def create
    @user = current_user
    @category = Procedure.new(procedure_params)
    @category = Category.find(params[:category_id])
    @procedure.author_id = @user.id
    @procedure.category = @category

    if @procedure.save
      flash[:sucess] = 'Transaction successfully Created'
      redirect_to categorys_path, notice: 'Success'
    else
      flash.now[:error] = 'error creating traction, please try again'
      render new_entity_path, notice: 'Error'
    end
  end

  private

  def procedure_params
    params.require(:procedure).permit(:name, :amount)
  end
end
