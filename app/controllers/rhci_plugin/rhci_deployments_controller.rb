module RhciPlugin

  class RhciDeploymentsController < ApplicationController

    respond_to :html

    def index
      # TODO - No backend deployment model yet
      # @deployments = Deployment.all
      render :index
    end

    def new
      # launch front-end JS app in new.html.erb view for new RHCI deployment
      # use rhci layout rather than foreman layout
      render :new, :layout => 'rhci_plugin/layouts/rhci'
    end

  end
end
