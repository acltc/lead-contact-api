Rails.application.routes.draw do
  resources :leads

  post '/twilio-webhook' => 'webhooks#twilio'
  post '/sendgrid-webhook' => 'webhooks#sendgrid'
end
