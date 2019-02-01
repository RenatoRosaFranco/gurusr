# frozen_string_literal: true
class Post < ApplicationRecord
	include Filterable

	self.table_name  = 'posts'
	self.primary_key = 'id'

	scope :lasts, -> {order(created_at: :desc)}
	scope :home,  -> {order(created_at: :desc).limit(4)}

  belongs_to :category
  belongs_to :user

  validates  :title,
  					 presence: true,
  					 uniqueness: true,
  					 allow_blank: false,
  					 length: { minimum: 3, maximum: 50 }

 	validates  :description,
 						 presence: true,
 						 uniqueness: false,
 						 allow_blank: false,
 						 length: { minimum: 3, maximum: 245 }

  validates  :content,
  					 presence: true,
  					 uniqueness: false,
  					 allow_blank: false,
  					 length: { minimum: 3, maximum: 10_000 }

  validates  :tags,
  					 presence: true,
  					 uniqueness: false,
  					 allow_blank: false,
  					 length: { minimum: 3, maximum: 145 }

  validates  :category,
  					 presence: true,
  					 uniqueness: false,
  					 allow_blank: false
end
