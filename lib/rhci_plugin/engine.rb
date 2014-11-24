module RhciPlugin
  class Engine < ::Rails::Engine

    initializer "static assets" do |app|
      app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{config.root}/public")
    end

    initializer 'rhci_plugin.register_plugin', :after=> :finisher_hook do |app|
      Foreman::Plugin.register :rhci_plugin do
        requires_foreman '>= 1.4'

        # Add permissions (TODO - do we need to set permissions here)
        # security_block :rhci_plugin do
        #   permission :view_rhci_plugin, {:'rhci_plugin/rhci_deployments' => [:r] }
        # end

        # Add role (TODO - will there be a rails called view_rhci_plugin)
        # role "RhciPlugin", [:view_rhci_plugin]

        sub_menu :top_menu, :rhci_menu, :caption => N_('RHCI Installer'), :after => :infrastructure_menu do
          menu :top_menu, :openstack_deployments,
               :url_hash => { :controller => 'rhci_plugin/rhci_deployments', :action => :index },
               :caption  => N_('Deployments')
          menu :top_menu, :new_openstack_deployment,
               :url_hash => { :controller => 'rhci_plugin/rhci_deployments', :action => :new },
               :caption  => N_('New RHCI deployment')
        end

      end
    end

  end
end
