class ResumesController < ApplicationController
   def index
      @resume = Resume.all
  end 
   def new
      @resume = Resume.new
   end
   
   def create
     
      @resume = Resume.new(resume_params)
      
      if @resume.save
         redirect_to root_path, notice: "The resume #{@resume.name} has been uploaded."
      
      else
         render "new"
      end
      
   end

   private
      def resume_params
      params.require(:resume).permit(:name, :position, :emailId, :attachment)
   end
end
 