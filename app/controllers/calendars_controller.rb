class CalendarsController < ApplicationController
  before_action :set_calendar, only: [:show, :update, :destroy]

  # GET /calendars
  def index
    @calendars = Calendar.all

    render json: @calendars
  end

  def subscribe
    cal = Icalendar::Calendar.new
    events = Calendar.all
    events.each  do |e|
      event = Icalendar::Event.new
      event.dtstart     = Icalendar::Values::Date.new(e.start_date)
      event.dtend       = Icalendar::Values::Date.new(e.end_date)
      event.summary     = e.title
      event.description = e.description
      event.ip_class    = "PRIVATE"
      cal.add_event(event)
    end
    cal.publish
    render plain: cal.to_ical
  end

  # GET /calendars/1
  def show
    render json: @calendar
  end

  # POST /calendars
  def create
    @calendar = Calendar.new(calendar_params)

    if @calendar.save
      render json: @calendar, status: :created, location: @calendar
    else
      render json: @calendar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calendars/1
  def update
    if @calendar.update(calendar_params)
      render json: @calendar
    else
      render json: @calendar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calendars/1
  def destroy
    @calendar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def calendar_params
      params.fetch(:calendar, {})
    end
end
