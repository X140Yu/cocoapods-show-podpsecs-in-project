require 'pathname'
ROOT = Pathname.new(File.expand_path('../../', __FILE__))
$:.unshift((ROOT + 'lib').to_s)
$:.unshift((ROOT + 'spec').to_s)

require 'bundler/setup'
require 'pathname'
require 'cocoapods'

require 'cocoapods_plugin'

#-----------------------------------------------------------------------------#

module Pod
end

#-----------------------------------------------------------------------------#
