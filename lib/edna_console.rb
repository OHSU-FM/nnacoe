require 'edna_console/ar_extensions'
require 'edna_console/rails_admin'
require 'edna_console/data_maker'
require 'edna_console/dashboard_lib'
require 'edna_console/user_has_assignments'

module EdnaConsole
    class Application < Rails::Application
        #config.after_initialize do
        #    # make sure all models have been loaded
        #    Rails.application.eager_load!

        #    # Add extensions to some models
        #    ::EdnaConsole::ArExtensions.load_extensions
        #    ::EdnaConsole::RailsAdmin.load_extensions
        #end
    end
end

