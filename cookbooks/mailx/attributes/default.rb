case node['platform_family']
when "debian"
  default['mailutils']['mailx-package'] = "mailutils"
when "rhel"
  default['mailutils']['mailx-package'] = "mailx"
end