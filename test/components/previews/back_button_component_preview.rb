class BackButtonComponentPreview < ViewComponent::Preview
  def default
    render(BackButtonComponent.new(back_url: "/"))
  end
end
