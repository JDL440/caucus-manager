class CongressionaldistrictsController < ApplicationController
    http_basic_authenticate_with name: "caucus", password: "Manager-2016", except: [:index, :show]
    
    def index
        @congressionaldistricts = CongressionalDistrict.all
    end
    
    def show
        @congressionaldistrict = CongressionalDistrict.find(params[:id])
    end
    
    def new
        @congressionaldistrict = CongressionalDistrict.new
    end
    
    def edit
        @congressionaldistrict = CongressionalDistrict.find(params[:id])
    end
    
    def create
        @congressionaldistrict = CongressionalDistrict.new(congressionaldistrict_params)
 
        if @congressionaldistrict.save
            redirect_to congressionaldistrict_path(@congressionaldistrict)
        else
            render 'new'
        end
        #render plain: params[:congressionaldistricts].inspect
    end
    
    def update
        @congressionaldistrict = CongressionalDistrict.find(params[:id])
        
        if @congressionaldistrict.update(congressionaldistrict_params)
            redirect_to congressionaldistrict_path(@congressionaldistrict)
        else
            render 'edit'
        end
    end
    
    def destroy
        @congressionaldistrict = CongressionalDistrict.find(params[:id])
        @congressionaldistrict.destroy
 
        redirect_to congressionaldistricts_path
    end
    
    private
    def congressionaldistrict_params
        params.require(:congressionaldistrict).permit(:name)
    end
end
