load_config 'conoha'

package 'htop'

# include_recipe '../shared/user.rb'
# include_recipe '../shared/sudoers.rb'
# include_recipe '../shared/sshd.rb'
# include_recipe '../shared/iptables.rb'
include_recipe '../shared/mysql.rb'

include_cookbook 'ruby'
include_cookbook 'nginx'
include_cookbook 'redis'
include_cookbook 'supervisord'

include_recipe 'githubranks.rb'
include_recipe 'gate.rb'

template 'nginx.conf' do
  path   '/etc/nginx/nginx.conf'
  source 'files/nginx.conf'
  owner  'root'
  group  'root'
  mode   '644'
  notifies :reload, 'service[nginx]'
end

remote_file 'crontab' do
  path   '/var/spool/cron/k0kubun'
  source 'files/crontab'
  owner  'k0kubun'
  group  'wheel'
  mode   '600'
end

remote_file '/etc/supervisord.conf' do
  source 'files/supervisord.conf'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
  notifies :run, "execute[service supervisord restart]"
end

template '/home/k0kubun/gate/config.yml' do
  source 'templates/config.yml'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
  notifies :run, "execute[service supervisord restart]"
end
