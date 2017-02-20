class AddIndexAndUniquenesstoLeadPhone < ActiveRecord::Migration[5.0]
  def change
    add_index :leads, :phone, unique: true
  end
end
