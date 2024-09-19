# frozen_string_literal: true

class FormComponent < ViewComponent::Base
  def initialize(post = nil)
    @post = post
    super
  end
end
