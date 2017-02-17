class AddSidToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :sid, :string
  end
end
