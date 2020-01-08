class ProjecttsController < ApplicationController
    def new
      @projectt = Projectt.new  
    end  
    
    def create
        @projectt = Projectt.new(projectt_params)
        if @projectt.save
            redirect_to @projectt
            UserMailer.with(user: @user).notification.deliver_now
        else
            render 'new'
        end  
        
    end    

    def index
        @projectts = Projectt.all
    end

    def show
        @projectt = Projectt.find(params[:id])
     end 
     
     def edit
        @projectt = Projjectt.find(params[:id])
     end 
  
    
     def update
        @projectt = Projectt.find(params[:id])
        if @projectt.update(params[:projectt].permit(:title, :description, :start_date, :end_date, :cost_of_project, :status))
           redirect_to @projectt
        else
          render 'edit'
        end   
     end 
  
      def destroy
          @projectt = Projectt.find(params[:id])
          @projjectt.destroy
          redirect_to projectt_path
      end    
     private
  
     def projectt_params
        params.require(:projectt).permit(:title, :description, :start_date, :end_date, :cost_of_project, :status)
     end 
  
  
end
