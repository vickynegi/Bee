class EventsController < ApplicationController
	skip_before_action :verify_authenticity_token

	# listing all the events latest wise
  def index
		@events = Event.all.order("created_at DESC")
  end

  # finding the particular event, then find whether the login user is attending/unattending the event or not
  # showing all the list of users who are attending the ongoing event
  def show
  	@event = Event.find_by(id: params[:id])
  	@user_event = UserEvent.find_by(user_id: current_user, event_id: @event) if current_user
  	@users = User.includes(user_events: [:event]).where(user_events: {is_attending: true, events: {on_going: true, id: @event.id}})
  	if @user_event
  		flash[:alert] = "#{current_user.name} is #{@user_event.is_attending ? "" : "not"} attending the event."
  	end
  end

  # saving the record if user is attending/unattending the event
  def attendance
  	obj = UserEvent.find_by(user_event_params.except(:is_attending))
  	if obj.present?
  		obj.update(is_attending: params[:is_attending])
  	else
  		UserEvent.create(user_event_params)
  	end
  end

  private

  def user_event_params
  	params.permit(:event_id, :is_attending, :user_id)
  end
end
