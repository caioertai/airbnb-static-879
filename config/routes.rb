Rails.application.routes.draw do
  #             controller#action
  # get "/", to: "flats#index" # FlatsController#index
  root to: "flats#index" # FlatsController#index
  #
  get "/flats/:id", to: "flats#show", as: :flat
end
