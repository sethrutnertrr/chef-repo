include_recipe 'apt::default'
include_recipe 'web_application::user'
include_recipe 'web_application::webserver'
include_recipe 'web_application::database'
