# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  g1         :string(255)
#  g1h        :string(255)
#  g2         :string(255)
#  g2h        :string(255)
#  g3         :string(255)
#  g3h        :string(255)
#  g4         :string(255)
#  g4h        :string(255)
#  g5         :string(255)
#  g5h        :string(255)
#  g6         :string(255)
#  g6h        :string(255)
#  g7         :string(255)
#  g7h        :string(255)
#  g8         :string(255)
#  g8h        :string(255)
#  g9         :string(255)
#  g9h        :string(255)
#  g10        :string(255)
#  g10h       :string(255)
#  g11        :string(255)
#  g11h       :string(255)
#  g12        :string(255)
#  g12h       :string(255)
#  g13        :string(255)
#  g13h       :string(255)
#  g14        :string(255)
#  g14h       :string(255)
#  g15        :string(255)
#  g16        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Size < ActiveRecord::Base

	has_many :products

	validates	:name,	presence: true

end
