
Rails.application.routes.draw do

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    devise_for :users, path: '', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/books", to: "books#get_all_books"  # buona
  get "/books?author=:author", to: "books#get_all_books"
  get "/books/:id", to: "books#get_book_by_id"  # buona
  get "/authors", to: "authors#get_all_authors"  # buona
  get "/authors/:id", to: "authors#get_authors_by_id"  # buona
  get "/authors/name/:name", to: "authors#get_by_name"  # buona
  get "/category", to: "category#get_all_category"  # buona
  get "/category/:id", to: "category#get_category_by_id" # buona

  get "/example", to: "example#example_handler"

  post "/create_book", to: "books#create_new_book"
  get "/destroy_book/:id", to: "books#destroy_book_by_id"


end
