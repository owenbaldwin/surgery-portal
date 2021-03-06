class ConsultationsController < ApplicationController

  # app/controllers/pages_controller.rb
  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    # @consultations = Consultation.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

    # Or, for a weekly view:
    @consultations = Consultation.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
  end

  def new
    @consultation = Consultation.new
    start_date = params.fetch(:start_date, Date.today).to_date
    @consultations = Consultation.where(start_time: start_date.beginning_of_week..start_date.end_of_week)


  end

  def create

  end
end
