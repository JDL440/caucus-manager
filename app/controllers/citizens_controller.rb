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
    
    def alternates
        @citizens = Citizen.all
    end
    
    def seat_alternate
        @citizen = Citizen.find(params[:id])
        
        @citizen.ld_seated_alternate = true
        @citizen.save()
        
        redirect_to @citizen        
    end
    
    def remove_alternate
        @citizen = Citizen.find(params[:id])
        
        @citizen.ld_seated_alternate = false
        @citizen.save()
        
        redirect_to @citizen        
    end
    
    def export
        @citizens = Citizen.all
	    citizen_csv = CSV.generate do |csv|
            csv << ["First Name", "Last Name", "Gender", "LD", "CD", "Precinct", "Candidate", "LD Delegate", "LD Alternate Number", "Email", "Phone", "Address", "City", "Zip code", "Checked in", "Seated alternate"]
            @citizens.each do |citizen|
                csv << [citizen.firstname, citizen.lastname, citizen.gender, citizen.precinct.legislative_district.name, citizen.precinct.congressional_district.name, citizen.precinct.name, citizen.candidate, citizen.ld_delegate, citizen.ld_alternate_number, citizen.email, citizen.phone, citizen.address, citizen.city, citizen.zip, citizen.ld_checked_in, citizen.ld_seated_alternate]     
            end   
        end    
        send_data(citizen_csv, :type => 'text/csv', :filename => 'all_citizens.csv')
    end    
    
    private
    def citizen_params
        params.require(:citizen).permit(:firstname, :lastname, :gender, :candidate, :precinct_id, :phone, :email, :address, :city, :zip, :ld_delegate, :ld_alternate_number, :ld_checked_in, :ld_seated_alternate)
    end
end
