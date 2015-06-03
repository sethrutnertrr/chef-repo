name              'nagios'
maintainer        'Seth Rutner'
maintainer_email  'seth.rutner@therealreal.com'
license           'Apache 2.0'
description       'Installs and configures Nagios server'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '7.1.7'

recipe 'default', 'Installs Nagios server.'
recipe 'nagios::pagerduty', 'Integrates contacts w/ PagerDuty API'
recipe 'nagios::commands', 'Extra commands'

depends 'apache2', '>= 2.0'
depends 'zap', '>= 0.6.0'

%w( build-essential php nginx nginx_simplecgi yum-epel nrpe ).each do |cb|
  depends cb
end

%w( debian ubuntu redhat centos fedora scientific amazon oracle).each do |os|
  supports os
end
