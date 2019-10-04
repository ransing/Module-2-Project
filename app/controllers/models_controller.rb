class ModelsController < ApplicationController

    def index 
        @models = Model.all 
    end

    def new 
        @model = Model.new
    end
    def show 
        @model = Model.find(params[:id])
    end 


end
