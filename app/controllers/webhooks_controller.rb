class WebhooksController < ApplicationController
  def twilio
    @lead = Lead.find_by(phone: params["from"])
    if @lead
      if @lead.update(active: false)
        render json: @lead
      else
        render json: @lead.errors, status: :unprocessable_entity
      end
    else
      head :no_content
    end
  end

  def sendgrid
    @lead = Lead.find_by(email: params["from"])
    if @lead
      if @lead.update(active: false)
        render json: @lead
      else
        render json: @lead.errors, status: :unprocessable_entity
      end
    else
      head :no_content
    end
  end
end
