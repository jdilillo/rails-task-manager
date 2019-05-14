Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Create new tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks/', to: 'tasks#create', as: :tasks

  # View all tasks
  get '/tasks', to: 'tasks#index', as: :all_task

  # Delete a task
  delete '/task/:id', to: 'tasks#destroy', as: :destroy_task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update a tasl
  patch '/task/:id', to: 'tasks#update', as: :update

end


