class Admin::System::Domain < ActiveRecord::Base
  belongs_to :webex_service_type, :class_name => 'Admin::System::WebexServiceType'


end
