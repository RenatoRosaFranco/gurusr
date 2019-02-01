# frozen_string_literal: true
class Member < ApplicationRecord
  include Filterable
	extend FriendlyId
	friendly_id :name, use: :slugged

	self.table_name  = 'members'
	self.primary_key = 'id'

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 40 }

	validates :phone,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :gender,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :birthdate,
						presence: true,
						uniqueness: false,
						allow_blank: false
end
