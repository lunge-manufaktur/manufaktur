class AddTaxIdToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :tax, index: true
    add_foreign_key :orders, :taxes
  end
end
