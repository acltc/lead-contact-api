class LeadContactMailer < ApplicationMailer
  default from: 'nikkiveen@gmail.com'

  def first_message(lead)
    @lead = lead
    mail(to: @lead.email, subject: '[TEST] Lead Initial Contact Email')
  end
end
