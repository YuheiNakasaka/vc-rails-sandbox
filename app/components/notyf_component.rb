# frozen_string_literal: true

class NotyfComponent < ViewComponent::Base
  def initialize(flash = nil)
    @flash = flash
    super
  end
end
