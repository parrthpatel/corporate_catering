# class to store addresses
class Address
  include Mongoid::Document

  field :house_no, type: String
  field :locality, type: String
  field :city, type: String
  field :pincode, type: Integer
  field :state, type: String

  validates :house_no, :locality, :city, :pincode, :state, presence: true
  
  belongs_to :location, polymorphic: true
  belongs_to :location, polymorphic: true
end
