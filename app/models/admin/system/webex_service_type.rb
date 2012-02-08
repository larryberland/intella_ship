class Admin::System::WebexServiceType < ActiveRecord::Base

  has_many :domains, :class_name => 'Admin::System::Domain'

  MEETING     = 'Meeting Center'
  TRAINING   = 'Training Center'
  MEETING_ENTERPRISE     = 'Enterprise Edition Meeting Center'
  TRAINING_ENTERPRISE  = 'Enterprise Edition Training Center'

  NAMES = [MEETING,
           TRAINING,
           MEETING_ENTERPRISE,
           TRAINING_ENTERPRISE]

  # method to get all the service_types for a form
  # [['NY New York', 32], ['CA California', 3] ... ]
  #
  # @param [none]
  # @return [ Array[Array] ]
  def self.form_selector
    find(:all, :order => 'name ASC').collect { |record| [record.name, record.id] }
  end

end
