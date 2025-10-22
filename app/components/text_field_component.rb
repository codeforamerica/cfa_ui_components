# frozen_string_literal: true

class TextFieldComponent < ViewComponent::Base
  def initialize(form:, method:, label:, help_text: nil, required: false)
    @form = form
    @method = method
    @label = label
    @help_text = help_text
    @required = required
  end

  private

  def required_class
    @required ? "required" : ""
  end
end
