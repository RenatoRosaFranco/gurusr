# frozen_string_literal: true
class PostsController < ApplicationController
	before_action :set_post, only: [:show]

	def index
		@posts = Post.all
		render xml: @posts, status: 200
	end

	def show
		render xml: @post, status: 200
	end

	private

	def set_post
		@post = Post.friendly.find(params[:id])
	end
end