name "base"
description "Base Server Role"
run_list "recipe[email_handler]", "recipe[chef-client::delete_validation]", "recipe[chef-client::config]", "recipe[chef-client]", "recipe[ntp]", "recipe[motd]", "recipe[users]", "recipe[push-jobs]"
default_attributes(
  "chef_client" => {
    "config" => {
      "ssl_verify_mode" => ":verify_peer"
    }
  },
  "ohai" => {
    "disabled_plugins" => [":Passwd"]
  },
  "push_jobs" => {
    "package_url" => "https://s3.amazonaws.com/chef-intermediate-topics/opscode-push-jobs-client-1.0.2-1.el6.x86_64.rpm",
    "package_checksum" => "2af78d8dd0d55ed5555227a2997b7d4440f32a90c0190389d418026490a63ca7",
    "whitelist" => {
      "chef-client" => "chef-client"
    }
  }
)