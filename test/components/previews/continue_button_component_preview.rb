class ContinueButtonComponentPreview < FormComponentPreview
  def default
    render(ContinueButtonComponent.new(form: form))
  end
end