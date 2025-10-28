class ButtonLinkComponentPreview < ViewComponent::Preview
  def primary
    render(ButtonLinkComponent.new(label: I18n.t("continue"), url: "/continue"))
  end

  def secondary
    render(ButtonLinkComponent.new(label: I18n.t("decline"), url: "/decline", style: :secondary))
  end
end
