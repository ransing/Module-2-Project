class DesignersController < ApplicationController

    def index 
        @designers = Designer.all
    end 

    def show 
        @designer = Designer.find(params[:id])
    end

    def new 
        @designer = Designer.new
    end
    
end
