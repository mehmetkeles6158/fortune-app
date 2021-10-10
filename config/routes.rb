Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/fortune_path",controller: "my_examples", action: "random_fortune"
  get "/random_number_path",controller: "my_examples", action: "random_number"
  get "/visits_path",controller: "my_examples", action:"num_visits"
  get "/bonus_path",controller: "my_examples", action:"song_lyrics"
end
