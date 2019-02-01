# frozen_string_literal: true
class ContactMailer < ApplicationMailer

  default from: 'gurusr-contato@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.received.subject
  #
  def received(contact)
    @contato = contact
    mail({
     to: 'gurusr-contato@gmail.com',
     subject: "#{contact.name}, Enviou um e-mail para GURUSR."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sended.subject
  #
  def sended(contact)
    @contact = contact
    mail({
      to: contact.email,
      subject: "#{contact.name}, Recebemos seu e-mail com sucesso."
    })
  end
end
