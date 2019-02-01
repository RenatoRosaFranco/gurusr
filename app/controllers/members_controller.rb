# frozen_string_literal: true
class MembersController < ApplicationController
	def create
		member = Member.find_or_create_by(member_params)
		redirect_to root_path, notice: "#{member.name}, você se inscreveu com sucesso."
	end

	private
		def member_params
			params.require(:member).permit(:name, :phone, :gender, :email, :birthdate)
		end
end