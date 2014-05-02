ohai 'reload_apache' do
  plugin 'apache'
  action :nothing
end

cookbook_file "#{node['ohai']['plugin_path']}/modules.rb" do
  source 'plugins/modules.rb'
  owner  'root'
  group  'root'
  mode   '0755'
  notifies :reload, 'ohai[reload_apache]', :immediately
end
 
include_recipe 'ohai::default'