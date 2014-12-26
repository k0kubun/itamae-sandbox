# to run on nginx
package 'php-fpm'

# to change from apache to nginx
remote_file 'www.conf' do
  path   '/etc/php-fpm.d/www.conf'
  source 'files/www.conf'
  user   'root'
  group  'root'
  mode   '644'
end

service 'php-fpm' do
  action [:enable, :start]
end

package 'zabbix-server' do
  options '--enablerepo=epel -y'
  action :install
end

package 'zabbix-server-mysql' do
  options '--enablerepo=epel -y'
  action :install
end

package 'zabbix-web-mysql' do
  options '--enablerepo=epel -y'
  action :install
end

package 'zabbix-agent' do
  options '--enablerepo=epel -y'
  action :install
end

service 'zabbix-server' do
  action [:enable, :start]
end

service 'zabbix-agent' do
  action [:enable, :start]
end
