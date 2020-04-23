class AppointmentsController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
  end

  def update
    @appointment.update(appointment_params)
  end

  def edit; end

  def show; end

  def destroy
    @appointment.destroy

    # no need for app/views/appointments/destroy.html.erb
    redirect_to appointments_path
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:appointment).permit(:name, :phone)
  end
end
