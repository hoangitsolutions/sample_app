Rails.application.routes.draw do
<<<<<<< HEAD
#   root 'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
=======
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"
>>>>>>> 09d7bfa... Finish Chapter 4
end
