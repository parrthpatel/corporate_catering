
# company class for storing records of companies
class Company
 
  require 'emailvalidator'
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, type: String
  field :phone_no, type: Integer
  field :email, type: String
    
  validates :name, presence: true
  validates :phone_no, length: { is: 10 }
  validates :phone_no, numericality: { only_integer: true }
  validates :email, presence: true, email: true
  validates :phone_no, :email,:name,uniqueness: { case_sensitive: false }


  has_and_belongs_to_many :vendors
  has_one :address, as: :location
  has_many :users

end
