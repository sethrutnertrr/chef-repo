name             'web_application'
maintainer       'yoloswag industries'
maintainer_email 'rtcrit@therealreal.com'
license          'All rights reserved'
description      'Installs/Configures web_application'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt', '~> 2.6.1'
depends 'apache2', '~> 3.0.1'
depends 'firewall', '~> 0.11.8'
