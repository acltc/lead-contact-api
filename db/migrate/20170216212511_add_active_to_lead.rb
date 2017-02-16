class AddActiveToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :active, :boolean, default: true
  end
end
