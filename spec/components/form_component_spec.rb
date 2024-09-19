# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FormComponent, type: :component do
  it 'renders a form' do
    render_inline(described_class.new)
    expect(page).to have_css('input[name="title"]')
    expect(page).to have_css('input[name="body"]')
    expect(page).to have_css('button[type="submit"]')
  end
end
