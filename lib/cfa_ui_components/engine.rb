require "rails/engine"
require "view_component"
require "fileutils"

module CfaUiComponents
  class Engine < ::Rails::Engine
    isolate_namespace CfaUiComponents

    initializer "disable .field_with_errors" do |app|
      puts "disabling .field_with_errors wrapper (in engine)"
      ActionView::Base.field_error_proc = proc do |html_tag, instance|
        html_tag.html_safe
      end
    end

  end
end
