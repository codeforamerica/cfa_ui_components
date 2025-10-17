# frozen_string_literal: true

class BackButtonComponent < ViewComponent::Base

  def initialize(back_url:)
    @back_url = back_url
  end

end
