class Rent < ActiveRecord::Base
  attr_accessible :descuento, :fecha_fin, :fecha_inicio, :property_user_id
  has_many :documents , through: :rentdocuments
  has_many :invoices
  belongs_to :leaseuser

end
# == Schema Information
#
# Table name: rents
#
#  id           :integer         not null, primary key
#  leaseuser_id :integer
#  fecha_inicio :date
#  fecha_fin    :date
#  descuento    :float
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

