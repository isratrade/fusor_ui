# RHCI Plugin

This is a rails engine that can be added to [Foreman](https://github.com/theforeman/foreman/).

It is currently just adds assets (javascript, stylesheets, images, fonts) from an ember-cli project entitled [fuser-demo](https://github.com/fusor/fusor-demo/)

It will probably serve as the parent plugin to add other fusor/RHCI plugins such as the password prompt plugin, RHEV plugin, etc.

## Installation

```ruby
gem 'rhci_plugin', :git => 'https://github.com/fusor/rhci_plugin.git
```

## Usage

Go to your Foreman instance and you should see a new menu item on the main menu entitled **RHCI Installer**.

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

TBD this whole section

Copyright (c) *2014* *Joseph Magen, Red Hat Engineering*

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

