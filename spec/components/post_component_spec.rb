# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostComponent, type: :component do
  it 'renders the post component' do
    post = Class.new do
      attr_accessor :id, :title, :body, :user_id

      def initialize(id, title, body, user_id)
        @id = id
        @title = title
        @body = body
        @user_id = user_id
      end
    end
    render_inline(described_class.new(post: post.new(1, 'Test Title', 'Test Body', 1)))
    expect(page).to have_content('1: Test Title')
    expect(page).to have_content('Test Body')
    expect(page).to have_content('by 1')
  end
end
