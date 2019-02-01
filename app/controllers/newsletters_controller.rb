# frozen_string_literal: true
class NewslettersController < ApplicationController
	def create
	  newsletter = Newsletter.find_or_create_by(newsletter_params)
		if newsletter.present?
			 NewsletterMailer.signup(newsletter).deliver_now
			 redirect_to root_path, notice: "Você se inscreveu com sucesso."
		end
	end

	private

	def newsletter_params
		params.require(:newsletter).permit(:email)
	end
end