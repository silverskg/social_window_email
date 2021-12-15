Rails.application.routes.draw do
  root 'inquiries#new'
  post 'inquiries/confirm'
  post 'inquiries/thanks'
end
