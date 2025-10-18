require "rails/engine"
require "view_component"

module CfaUiComponents
  class Engine < ::Rails::Engine
    isolate_namespace CfaUiComponents

    initializer "cfa_ui_components.assets" do |app|
      if app.config.respond_to?(:assets)
        # I believe these are unnecessary, since Tailwind's @import simply looks for relative paths
        # But I think we may still want to use the engine to do something tricky like symlink the stylesheet into the
        # app's stylesheets directory, so I'm keeping it for now.

        # app.config.assets.paths += [ "#{root}/app/stylesheets" ]
        # app.config.assets.precompile += ["cfa_ui_components.tailwind.css"]
      end
    end
  end
end
