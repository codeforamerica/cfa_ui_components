# frozen_string_literal: true

class ButtonLinkComponent < ViewComponent::Base
  def initialize(label:, url:, style: :primary)
    @label = label
    @url = url
    @button_style = case style
    when :primary
                      "btn--primary"
    when :secondary
                      "btn--secondary"
    else
                      raise ArgumentError("Invalid button style")
    end
  end
end
