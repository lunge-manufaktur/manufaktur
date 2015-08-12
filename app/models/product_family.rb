# == Schema Information
#
# Table name: product_families
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductFamily < ActiveRecord::Base
  # Associations
  has_many :products
end
