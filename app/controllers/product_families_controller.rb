# == Schema Information
#
# Table name: product_families
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductFamiliesController < ApplicationController
  def create
    @product_family = ProductFamily.new(product_family_params)
    redirect_to settings_path if @product_family.save
  end

  private

  def product_family_params
    params.require(:product_family).permit(:name)
  end
end
