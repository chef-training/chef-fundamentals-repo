actions :create, :remove

state_attrs :site_name, :site_port

attribute :site_name, :name_attribute => true, :kind_of => String
attribute :site_port, :default => 80, :kind_of => Fixnum