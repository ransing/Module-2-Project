class EventModelsController < ApplicationController
    def index
        @eventmodels = EventModel.all
        @designers = Designer.all
        @eventmodel = EventModel.new
    end
    
    
    def new 
        @events = Event.all
        @models = Model.all
        @designers = Designer.all
        # @eventmodels = Eventmodel.all
        @eventmodel = EventModel.new 
        # byebug
        @event = Event.find(params[:event_id])
    end 

    def show 
        @eventmodel = EventModel.find(params[:id])
    end

    

    def create
        # byebug
       @eventmodel =  EventModel.create(params.require(:event_model).permit(:event_id, :model_id))
        redirect_to user_path(@current_user)
    end

    def edit
        # byebug
        # @eventmodel = EventModel.where(event_id: params[:id])
        @models = Model.all
        @event_id = Event.find(params[:event_id])
        @eventmodel = EventModel.find(params[:id])
        # @eventmodels = EventModel.all
        # @eventmodel = EventModel.find((params.require(:event_model).permit(:event_id, :model_id)))
        # @eventmodel = EventModel.find(params[:id])
    
        # find_event_model_id

        # byebug
        # redirect_to edit_event_model_path
    end

    def update
        
        @eventmodel = EventModel.find(params[:id])
        pat_params = params.require(:event_model).permit(:model_id)
        @eventmodel.update(pat_params)
        redirect_to event_path(@eventmodel.event)
    end

    private 

    def find_event_model_id
        @eventmodelid = @event.event_models.map do |x|
            x.id
        end 
    end 
            
        




end
