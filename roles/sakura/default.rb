load_config 'sakura'

# include_recipe '../shared/user.rb'
# include_recipe '../shared/sudoers.rb'
# include_recipe '../shared/sshd.rb'
# include_recipe '../shared/iptables.rb'
include_recipe '../shared/mysql.rb'

include_cookbook 'ruby'
include_cookbook 'nginx'
include_cookbook 'redis'

include_recipe 'githubranks.rb'

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
