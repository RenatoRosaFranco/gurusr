# frozen_string_literal: true
class Question < ApplicationRecord
	include Filterable

	self.table_name  = 'questions'
	self.primary_key = 'id'

	scope :lasts, -> {order(created_at: :desc)}
	scope :index, -> {order(created_at: :desc).limit(3)}

	belongs_to :user

	validates  :title,
						 presence: true,
						 uniqueness: true,
						 allow_blank: false,
						 length: { minimum: 3, maximum: 50 }

	validates  :answer,
						 presence: true,
						 uniqueness: false,
						 allow_blank: false,
						 length: { minimum: 3, maximum: 700 }
end
