class Admin::System::DomainsController < InheritedResources::Base
  before_filter :form_info

  private

  def form_info
    @service_types = Admin::System::WebexServiceType.form_selector
  end
end
