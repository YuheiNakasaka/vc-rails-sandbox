# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :client

  def index
    @posts = @client.posts_get
  end

  def show
    @post = @client.posts_id_get(params[:id])
  end

  def new; end

  def edit
    @post = @client.posts_id_get(params[:id])
  end

  def create
    resp = @client.posts_post({ title: params[:title], body: params[:body] })
    if resp.body == params[:body] && resp.title == params[:title]
      redirect_to posts_path, notice: 'Post created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @client.posts_id_put(params[:id], { title: params[:title], body: params[:body] })
    redirect_to post_path(params[:id]), notice: 'Post updated successfully'
  end

  def destroy
    @client.posts_id_delete(params[:id])
    redirect_to posts_path, status: :see_other
  end

  private

  def client
    @client ||= OpenapiClient::DefaultApi.new
  end
end
