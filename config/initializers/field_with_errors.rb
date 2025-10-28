puts "disabling .field_with_errors wrappers (in lookbook app)"
ActionView::Base.field_error_proc = proc do |html_tag, instance|
  html_tag.html_safe
end
