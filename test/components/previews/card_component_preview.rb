class CardComponentPreview < ViewComponent::Preview
  def default
    render(CardComponent.new) do
      content_tag :p, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse semper at diam at lobortis. Quisque quis molestie sem. Maecenas pellentesque."
    end
  end
end