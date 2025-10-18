require "rails/engine"
require "view_component"

module CfaUiComponents
  class Engine < ::Rails::Engine
    isolate_namespace CfaUiComponents

    initializer "cfa_ui_components.assets" do |app|
      if app.config.respond_to?(:assets)
        app.config.assets.paths += ["#{root}/stylesheets"]
      end
    end
  end
end
