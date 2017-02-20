class AddIndexAndUniquenessToLeadEmail < ActiveRecord::Migration[5.0]
  def change
    add_index :leads, :email, unique: true
  end
end
