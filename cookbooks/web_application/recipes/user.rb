group node['web_application']['user']

user node['web_application']['user'] do
	group node['web_application']['group']
	system true
	shell 'bin/bash'
end
