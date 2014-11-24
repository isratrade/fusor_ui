Rails.application.routes.draw do

  # Note - remove /deployments route when/if it exists in Foreman core
  get 'deployments', :to => 'rhci_plugin/rhci_deployments#index'
  get 'r', :to => 'rhci_plugin/rhci_deployments#new'

end
