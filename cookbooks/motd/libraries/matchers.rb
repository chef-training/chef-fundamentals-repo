#
# Cookbook Name:: motd
# Library:: matchers
#
# Copyright 2014, Chris Aumann
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

if defined?(ChefSpec)
  def create_motd(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:motd, :create, resource_name)
  end

  def delete_motd(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:motd, :delete, resource_name)
  end
end
