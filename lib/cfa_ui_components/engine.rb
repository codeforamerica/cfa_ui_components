require "rails/engine"
require "view_component"
require "fileutils"

module CfaUiComponents
  class Engine < ::Rails::Engine
    isolate_namespace CfaUiComponents

    initializer "cfa_ui_components.assets" do |app|
      if app.config.respond_to?(:assets)
        source_path = "#{root}/app/assets/stylesheets/cfa_ui_components.tailwind.css"
        dest_path = "#{Rails.root}/app/assets/stylesheets/cfa_ui_components.tailwind.css"

        Tempfile.open do |temp_file|
          source_line = "@source \"#{root}\";\n\n"
          temp_file.write(source_line)
          temp_file.write(File.read(source_path))
          FileUtils.mv(temp_file.path, dest_path)
        end
      end
    end
  end
end
