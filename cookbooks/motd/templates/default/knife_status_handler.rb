require 'chef/handler'

module Motd
  class KnifeStatus < Chef::Handler
    def initialize
    end

    def report
      if run_status.success?
        File.open("#{Chef::Config[:file_cache_path]}/last_successful_chef_run", 'w') do |file|
          file.write Time.now.to_i
        end
      end
    end
  end
end
