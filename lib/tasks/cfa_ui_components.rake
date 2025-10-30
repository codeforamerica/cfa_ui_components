namespace :cfa_ui_components do
  desc "Copy the CfA UI Components stylesheet into the host application's stylesheets/vendors dir, with a @source directive that instructs Tailwind not to purge utility classes used in the components."
  task copy_gem_styles: :environment do
    gem_spec = Gem.loaded_specs["cfa_ui_components"]
    if gem_spec
      source = File.join(gem_spec.full_gem_path, "app/assets/stylesheets/cfa_ui_components.tailwind.css")
      dest = Rails.root.join("app/assets/stylesheets/vendor/cfa_ui_components.tailwind.css")

      FileUtils.mkdir_p(File.dirname(dest))
      Tempfile.open do |temp_file|
        source_line = "@source \"#{gem_spec.full_gem_path}\";\n\n"
        temp_file.write(source_line)
        temp_file.write(File.read(source))
        FileUtils.mv(temp_file.path, dest)
      end
    end
  end
end
