# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    client = OpenapiClient::DefaultApi.new
    @posts = client.posts_get
  end

  def show
    client = OpenapiClient::DefaultApi.new
    @post = client.posts_id_get(params[:id])
  end
end
