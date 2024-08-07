Rails.application.routes.draw do
  get 'welcome/index'
  resources :coins # quando coloca o resource ele cria 7 rotas de api para trabalhar om crud


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/health-checker", to: "health_checker#index"
  get "/logs", to: "logs#create"
  get "/logs-get", to: "logs#index"

  get "/pessoa-get", to: "pessoas#index"
  get "/pessoa-post", to: "pessoas#create"
  get "/pessoa-edit", to: "pessoas#edit"
  get "/pessoa-delete", to: "pessoas#delete"
  get "/pessoa-salario-get", to: "pessoas#filter_salario"

# produtos
  get "/produtos-get", to: "produtos#index"
  get "/produtos-read", to: "produtos#read"
  get "/produtos-post", to: "produtos#create"
  get "/produtos-edit", to: "produtos#edit"
  get "/produtos-delete", to: "produtos#delete"

# clientes
  get "/clientes-get", to: "clientes#index"
  get "/clientes-read", to: "clientes#read"
  get "/clientes-post", to: "clientes#create"
  get "/clientes-edit", to: "clientes#edit"
  get "/clientes-delete", to: "clientes#delete"
  get "/clientes/:id", to: "clientes#id"


end
