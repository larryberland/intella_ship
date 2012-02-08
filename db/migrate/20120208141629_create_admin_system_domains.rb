class CreateAdminSystemDomains < ActiveRecord::Migration
  def change
    create_table :admin_system_domains do |t|
      t.string :name
      t.boolean :enable
      t.string :server_name
      t.string :host_name
      t.string :site_id
      t.string :partner_id
      t.string :username
      t.string :password
      t.string :meeting_password
      t.references :webex_service_type
      t.boolean :use_credential
      t.boolean :allow_registration_passwords
      t.boolean :allow_session_password

      t.timestamps
    end
    add_index :admin_system_domains, :webex_service_type_id
  end
end
