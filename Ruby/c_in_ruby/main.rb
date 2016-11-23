#!/usr/bin/env ruby
#
$LOAD_PATH << '.'

require 'calc' # load calc.so
include Calc # load module Calc

# call Calc methods
puts sum 5, 15
puts sub 19,8
