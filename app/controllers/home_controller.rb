# frozen_string_literal: true
class HomeController < ApplicationController
  def index
  	@member 		= Member.new
  	@newsletter = Newsletter.new
  	@contact 		= Contact.new
  end
end
