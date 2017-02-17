class Lead < ApplicationRecord
  # after_create :send_text

  def send_text
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    twilio_number = ENV['TWILIO_NUMBER']

    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.messages.create({
      :from => twilio_number,
      :to => self.phone,
      :body => "Hello from Actualize! Are you available to chat?",
      :provide_feedback => true
    })
  end

  def send_first_email

  end
end
