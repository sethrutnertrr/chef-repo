name 'monitoring'
description 'Monitoring server'

run_list(
  'recipe[nagios::default]'	
)

default_attributes(
  :nagios => {
    :server_auth_method => 'htauth',
  }
)

override_attributes(
  :apache2 => {
    :mpm => 'prefork',
}
)
