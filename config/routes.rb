Rails.application.routes.draw do
  resources :skills
  resources :employees, :vacancies do
    resources :skills
  end

  root 'welcome#index'
end
