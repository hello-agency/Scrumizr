Rails.application.routes.draw do

  scope '/projects' do
    get '/', to: 'projects#index', as: 'projects'
    get '/:id', to: 'projects#show', as: 'projects_show'
    post '/', to: 'projects#create'
    patch '/:id', to: 'projects#update'
    delete '/:id', to: 'projects#destroy'
  end

  scope '/members' do
    get '/', to: 'members#index', as: 'members'
    get '/:id', to: 'members#show', as: 'members_show'
    delete '/:id', to: 'members#delete'
  end
end
