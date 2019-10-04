class EventsController < ApplicationController

    def new
        @event = Event.new
        @designers = Designer.all
        @models = Model.all
        @users = User.all
        
        @event_model_model = @event.models
    end

    def index
        @events = Event.all
        @event_models = EventModel.all
    end

    
    def create
            # pt_params = params.require(:event).permit(:designer_id, :location, :date, :name)
            @event = Event.create(model_params.merge(user_id: @current_user.id))
            # EventModel.create(event_id: @event.id, )
            redirect_to new_event_event_model_path(@event)
    end

    def show
        @event = Event.find(params[:id])
        @event_models = @event.models
        @eventmodels = @event.event_models
        # byebug
    end 


    def edit
        @event = Event.find(params[:id])
        @eventmodel = @event.event_models

        # byebug
        # @eventmodel = Eventmodel.find(params[:id])
        # @eventmodel = EventModel.new
    #  redirect_to new_event_model_path
    end 

    def update
        # @eventmodel = EventModel.new
        # byebug
        @event = Event.find(params[:id])
        # @eventmodel = Eventmodel.find(params[:id])
        # params.require(:event).permit(:designer_id, :location, :date, :name)
        @event.update(model_params.merge(user_id: @current_user.id))
        # @event_model = @event.eventmodels
        redirect_to user_path(@current_user)
    end 

    def destroy 
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to user_path(@current_user)
    end 

    private

    def model_params
        params.require(:event).permit(:designer_id, :location, :date, :name)
    end 



end
