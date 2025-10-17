# frozen_string_literal: true

class ContinueButtonComponent < ViewComponent::Base
  def initialize(form:, label: I18n.t("continue"))
    @form = form
    @label = label
  end
end
