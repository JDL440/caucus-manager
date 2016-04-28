class PrecinctsController < ApplicationController
    http_basic_authenticate_with name: "caucus", password: "Manager-2016", except: [:index, :show]
    
    def index
        @precincts = Precinct.all
    end
    
    def show
        @precinct = Precinct.find(params[:id])
    end
    
    def new
        @precinct = Precinct.new
    end
    
    def edit
        @precinct = Precinct.find(params[:id])
    end
    
    def create
        @precinct = Precinct.new(precinct_params)
 
        if @precinct.save
            redirect_to precinct_path(@precinct)
        else
            render 'new'
        end
        #render plain: params[:precincts].inspect
    end
    
    def update
        @precinct = Precinct.find(params[:id])
        
        if @precinct.update(precinct_params)
            redirect_to precinct_path(@precinct)
        else
            render 'edit'
        end
    end
    
    def destroy
        @precinct = Precinct.find(params[:id])
        @precinct.destroy
 
        redirect_to precincts_path
    end
    
    private
    def precinct_params
        params.require(:precinct).permit(:name, :congressionaldistrict_id, :legislativedistrict_id)
    end
end
