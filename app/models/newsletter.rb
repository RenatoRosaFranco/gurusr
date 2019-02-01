# frozen_string_literal: true
class Newsletter < ApplicationRecord
	include Filterable

	self.table_name  = 'newsletters'
	self.primary_key = 'id'

	after_create :signup_newsletter

	validates    :token,
						   uniqueness: true,
						   allow_blank: false

	def signup_newsletter
		set_token
		set_enable(:true)
		set_signup_date(Date.today)
		send_signup_email
		save
	end

	def unsignup_newsletter
		remove_token
		set_enable(:false)
		send_cancel_email
		save
	end

	private

	def send_signup_email
		NewsletterMailer.signup(self).deliver_now
	end

	def send_cancel_email
		NewsletterMailer.cancel(self).deliver_now
	end

	def set_token
		self.token = SecureRandom.urlsafe_base64(11)
	end

	def remove_token
		self.token = nil
	end

	def set_enable(enable = true)
		self.active = enable
	end

	def set_signup_date(date = Date.today)
		self.signup_date = date
	end
end
