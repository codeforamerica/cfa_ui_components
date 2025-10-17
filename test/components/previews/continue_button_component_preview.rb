class ContinueButtonComponentPreview < FormComponentPreview
  def default
    render(ContinueButtonComponent.new(form: form))
  end

  def custom_label
    render(ContinueButtonComponent.new(form: form, label: I18n.t("submit")))
  end
end