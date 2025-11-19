# frozen_string_literal: true

class LinkComponent < ViewComponent::Base
  def initialize(label:, url:, icon: nil)
    @label = label
    @url = url
    @icon = icon
  end

  private

  def icon_image_path
    case @icon
    when "info"
      "icons/information.svg"
    else
      ""
    end
  end

  def icon_alt_text
    descriptor = case @icon
    when "info"
      "info"
    else
      ""
    end
    descriptor + " icon"
  end
end
