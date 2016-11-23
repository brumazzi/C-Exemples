#!/usr/bin/env/ruby

require 'mkmf'

# gem make file
extension_name = 'calc'
dir_config(extension_name)
create_makefile(extension_name)
