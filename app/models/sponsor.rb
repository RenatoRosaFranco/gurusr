# frozen_string_literal: true
class Sponsor < ApplicationRecord
  include Filterable
  
	self.table_name  = 'sponsors'
	self.primary_key = 'id'

  belongs_to :user
  PLANS = %w{Gold Silver}
  
  scope :by_name,   ->(name) { where(name: name) }
  scope :silver_partners, -> { where(partner_type: 'Silver') }
  scope :gold_partners,   -> { where(partner_type: 'Gold')   }

  validates :name,
  					presence: true,
  					uniqueness: true,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 50 }

  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 500 }

  validates :website,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 245 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 145 }

  validates :partner_type,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 60 }

  validates :responsible,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 60 }
end
