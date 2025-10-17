class FormComponentPreview < ViewComponent::Preview
  include ActionView::Helpers::FormHelper

  private

  def form
    form_with url: "/", method: :post do |form|
      return form
    end
  end
end