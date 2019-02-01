# frozen_string_literal: true
class ContactsController < ApplicationController
	def create
		contact = Contact.new(contact_params)
		if contact.valid?
			 contact.sendEmail
			 success_message = "#{contact.name}, sua mensagem foi enviada com sucesso. Agradece-mos o contato."
			 redirect_to :root, notice: success_message
		else
			 error_message = 'Falha ao enviar a mensagem, tente novamente mais tarde.'
			 redirect_to :root, notice: error_message
		end
	end

	def contact_params
		params.require(:contact).permit(:name, :email, :subject, :message)
	end
end