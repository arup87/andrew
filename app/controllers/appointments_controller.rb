class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end
  
  def new
    @appointment = Appointment.new
  end
  
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end
  
  
  
  
  private
  
  def appointment_params
    params.require(:appointment).permit(:date_of_visit, :pet_id, :vet_id, :reminder, :reason_for_visit)
  end
end
