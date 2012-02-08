class CreateAdminSystemWebexServiceTypes < ActiveRecord::Migration
  def change
    create_table :admin_system_webex_service_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
