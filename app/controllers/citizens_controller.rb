class CitizensController < ApplicationController
    http_basic_authenticate_with name: "caucus", password: "Manager-2016", except: [:index, :show]
    
    def index
        @citizens = Citizen.all
    end
    
    def show
        @citizen = Citizen.find(params[:id])
    end
    
    def new
        @citizen = Citizen.new
    end
    
    def edit
        @citizen = Citizen.find(params[:id])
    end
    
    def create
        @citizen = Citizen.new(citizen_params)
 
        if @citizen.save
            redirect_to @citizen
        else
            render 'new'
        end
        #render plain: params[:citizen].inspect
    end
    
    def update
        @citizen = Citizen.find(params[:id])
                
        if @citizen.update(citizen_params)
            redirect_to @citizen
        else
            render 'edit'
        end
    end
    
    def destroy
        @citizen = Citizen.find(params[:id])
        @citizen.destroy
 
        redirect_to citizens_path
    end
    
    def checkin
        @citizen = Citizen.find(params[:id])
        
        @citizen.ld_checked_in = true
        @citizen.save()
        
        redirect_to @citizen        
    end
    
    def checkout
        @citizen = Citizen.find(params[:id])
        
        @citizen.ld_checked_in = false
        @citizen.save()
        
        redirect_to @citizen        
    end
    
    private
    def citizen_params
        params.require(:citizen).permit(:firstname, :lastname, :candidate, :precinct_id, :phone, :email, :address, :city, :zip, :ld_delegate, :ld_alternate_number, :ld_checked_in, :ld_seated_alternate)
    end
end