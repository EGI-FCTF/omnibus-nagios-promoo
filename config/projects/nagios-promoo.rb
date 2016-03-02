name "nagios-promoo"
maintainer "Boris Parak <parak@cesnet.cz>"
homepage "https://github.com/EGI-FCTF/nagios-promoo"
description "Nagios Probes for Monitoring OpenNebula and OCCI"

# Defaults to C:/nagios-promoo on Windows
# and /opt/nagios-promoo on all other platforms
install_dir     "#{default_root}/#{name}"
build_version   "0.0.1"
build_iteration 1

override :rubygems, :version => '2.4.4'
override :ruby, :version => '2.1.5'

# creates required build directories
dependency 'preparation'

# nagios-promoo dependencies/components
dependency 'nagios-promoo'

# version manifest file
dependency 'version-manifest'

# tweaking package-specific options
package :deb do
  vendor 'CESNET, Grid Department <cloud@metacentrum.cz>'
  license 'Apache 2.0'
  priority 'extra'
  section 'net'
end

package :rpm do
  vendor 'CESNET, Grid Department <cloud@metacentrum.cz>'
  license 'Apache 2.0'
  category 'Applications/Internet'
end

exclude '\.git*'
exclude 'bundler\/git'
