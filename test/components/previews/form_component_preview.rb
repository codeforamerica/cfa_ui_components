require 'active_model'

class FormComponentPreview < ViewComponent::Preview
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormOptionsHelper

  private

  def form(model: TestModel.new)
    form_with url: "/", method: :post, model: model do |f|
      return f
    end
  end

  class TestModel
    include ActiveModel::Model
    include ActiveModel::Attributes

    attribute :first_name
    attribute :last_name
    attribute :favorite_fruits

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :favorite_fruits, presence: true
  end

  def self.fruit_options
    [OpenStruct.new(value: "orange", label: "Orange"),
     OpenStruct.new(value: "banana", label: "Banana"),
     OpenStruct.new(value: "apple", label: "Apple")]
  end
end