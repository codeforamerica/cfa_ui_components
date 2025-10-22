# frozen_string_literal: true

class FormErrorsComponent < ViewComponent::Base
  def initialize(form:, method:)
    @form = form
    @method = method
  end
end
