Rails.application.routes.draw do
  get 'static_pages/help', as: :help
  get 'static_pages/about', as: :about
  get 'static_pages/contact', as: :contact

  root 'static_pages#home'
end
