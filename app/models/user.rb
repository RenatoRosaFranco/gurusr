# frozen_string_literal: true
class User < ApplicationRecord
	include Filterable
	extend  FriendlyId
	friendly_id :name, use: :slugged
	
	self.table_name  = 'users'
	self.primary_key = 'id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
