motd CHANGELOG
=====================

This file is used to list changes made in each version of the motd cookbook.

0.6.2
-----

- Only show red in a colorful motd when it's been longer than interval and splay minutes.

0.6.1
-----

- Use `node['root_group']` attribute when setting file permissions

0.6.0
-----

- Add tests
- Add support for spray setting when using knife-status plugin

0.5.0
-----

- Fix an issue with `knife_status` integer parsing
- Renamed `knife-status` recipe to `knife_status`
- Add linting tests

0.4.1
-----

- Convert automatically detected interval to minutes

0.4.0
-----

- Use a chef\_handler instead of "knife status" to get the last successful chef run
  This is faster than invoking ruby on each login

0.1.0
-----
- Initial release of motd
