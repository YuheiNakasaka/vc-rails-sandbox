# frozen_string_literal: true

class PostComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
    super
  end
end
