# frozen_string_literal: true

class SubmitButtonComponent < ViewComponent::Base
  def initialize(form:, label: I18n.t("continue"))
    @form = form
    @label = label
  end
end
