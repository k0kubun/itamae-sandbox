load_config 'conoha'

# include_recipe '../shared/sudoers.rb'
# include_recipe '../shared/user.rb'
# include_recipe '../shared/iptables.rb'
# include_recipe '../shared/sshd.rb'
# include_recipe '../shared/mysql.rb'

# include_cookbook 'ruby'
include_cookbook 'nginx'
# include_cookbook 'redis'

# package 'java-1.6.0-openjdk-devel.x86_64'

include_recipe 'githubranks.rb'

remote_file 'nginx.conf' do
  path   '/etc/nginx/nginx.conf'
  source 'files/nginx.conf'
  owner  'root'
  group  'root'
  mode   '644'
  notifies :reload, 'service[nginx]'
end
