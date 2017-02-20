class RemoveSidFromLead < ActiveRecord::Migration[5.0]
  def change
    remove_column :leads, :sid, :string
  end
end
