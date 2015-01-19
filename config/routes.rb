Rails.application.routes.draw do

  scope '/projects' do
    get '/', to: 'projects#index', as: 'projects'
    get '/:id', to: 'projects#show', as: 'projects_show'
    post '/', to: 'projects#create'
    patch '/:id', to: 'projects#update'
    delete '/:id', to: 'projects#destroy'
    get '/:project_id/members', to: 'project_members#project_members', as: 'project_members'
  end

  scope '/members' do
    get '/', to: 'members#index', as: 'members'
    get '/:id', to: 'members#show', as: 'members_show'
    delete '/:id', to: 'members#delete'
    get '/:member_id/projects', to: 'project_members#member_projects', as: 'member_projects'
  end
end
