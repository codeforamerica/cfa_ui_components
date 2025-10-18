require "rails/engine"
require "view_component"

module CfaUiComponents
  class Engine < ::Rails::Engine
    isolate_namespace CfaUiComponents

    initializer "cfa_ui_components.assets" do |app|
      if app.config.respond_to?(:assets)
        source_path = "#{root}/app/assets/stylesheets/cfa_ui_components.tailwind.css"
        dest_path = "#{Rails.root}/app/assets/stylesheets/cfa_ui_components.tailwind.css"
        File.symlink(source_path, dest_path) unless File.exist? dest_path
      end
    end
  end
end
