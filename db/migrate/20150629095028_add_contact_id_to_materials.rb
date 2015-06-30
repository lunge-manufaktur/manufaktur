class AddContactIdToMaterials < ActiveRecord::Migration
  def change
    add_reference :materials, :contact, index: true, foreign_key: true
  end
end
