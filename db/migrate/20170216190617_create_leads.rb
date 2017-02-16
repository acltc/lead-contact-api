class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
