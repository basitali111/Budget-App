class ProceduresController < ApplicationController
    def new
        @procedure = Procedure.new
      end
      def create
        @procedure = Procedure.new(procedure_params)
        @procedure.user = current_user
        if @procedure.save
          redirect_to category_path
        else
          render :new
        end
      end
    
      def procedure_params
        params.require(:procedure).permit(:name, :amount)
      end
end
