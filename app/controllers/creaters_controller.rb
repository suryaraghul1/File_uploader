class CreatersController < ApplicationController
 
   def index
      @creater = Creater.all
   end
   
   def new
      @creater = Creater.new
   end
   
   def create
      @creater = Creater.new(creater_params)
      
      if @creater.save
         redirect_to creaters_path, notice: "The File #{@creater.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
       @creater = Creater.find(params[:id])
        @creater.destroy
      redirect_to creaters_path, notice:  "The File #{creater.name} has been deleted."
   end
   
   private
      def creater_params
      params.require(:creater).permit(:name, :attachment)
   end
   
end
