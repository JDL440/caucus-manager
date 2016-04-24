class LegislativedistrictsController < ApplicationController
    http_basic_authenticate_with name: "caucus", password: "Manager-2016", except: [:index, :show]
    
    def index
        @legislativedistricts = LegislativeDistrict.all
    end
    
    def show
        @legislativedistrict = LegislativeDistrict.find(params[:id])
    end
    
    def new
        @legislativedistrict = LegislativeDistrict.new
    end
    
    def edit
        @legislativedistrict = LegislativeDistrict.find(params[:id])
    end
    
    def create
        @legislativedistrict = LegislativeDistrict.new(legislativedistrict_params)
 
        if @legislativedistrict.save
            redirect_to legislativedistrict_path(@legislativedistrict)
        else
            render 'new'
        end
        #render plain: params[:legislativedistricts].inspect
    end
    
    def update
        @legislativedistrict = LegislativeDistrict.find(params[:id])
        
        if @legislativedistrict.update(legislativedistrict_params)
            redirect_to legislativedistrict_path(@legislativedistrict)
        else
            render 'edit'
        end
    end
    
    def destroy
        @legislativedistrict = LegislativeDistrict.find(params[:id])
        @legislativedistrict.destroy
 
        redirect_to legislativedistricts_path
    end
    
    private
    def legislativedistrict_params
        params.require(:legislativedistrict).permit(:name)
    end
end
