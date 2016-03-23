Rails.application.routes.draw do
  resources :bookmarks

  get "/:slug" => "visit#index", as: :visit
  get "/crawl/:url" => "crawl#index", as: :crawl, constraints: { url: %r{.*} }

  root to: "bookmarks#index"

  # mount ActionCable.server => '/cable'
end
