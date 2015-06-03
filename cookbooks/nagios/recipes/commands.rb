#
# Cookbook Name:: nagios
# Recipe:: commands
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
nagios_command 'check_uptime' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v UPTIME'
end

nagios_command 'check_cpu' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v CPULOAD -l 5,80,90'
end

nagios_command 'check_disk_c' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l c -w 85 -c 95'
end

nagios_command 'check_disk_d' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l d'
end

nagios_command 'check_disk_e' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l e'
end

nagios_command 'check_disk_f' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l f'
end

nagios_command 'check_disk_g' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l g'
end

nagios_command 'check_disk_h' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l h'
end

nagios_command 'check_disk_i' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l i'
end

nagios_command 'check_disk_j' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v USEDDISKSPACE -l j'
end

nagios_command 'check_memory' do
	options 'command_line' => '$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v MEMUSE -w 80 -c 90'
end
