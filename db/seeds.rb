# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

seed_path = Rails.root.join('db', 'seed')

Admin::System::WebexServiceType::NAMES.each do |category_type|
  Admin::System::WebexServiceType.find_or_create_by_name(category_type)
end

# Load Admin System Domain information
file_to_load = seed_path.join('domains.yml').to_s
info         = YAML::load(File.open(file_to_load))
info[:domains].each do |domain|

  record = Admin::System::Domain.find_or_create_by_name(domain[:name])
  record.update_attributes(domain)

end





