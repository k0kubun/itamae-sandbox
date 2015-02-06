load_config 'conoha'

# include_recipe '../shared/sudoers.rb'
# include_recipe '../shared/user.rb'
# include_recipe '../shared/iptables.rb'
# include_recipe '../shared/sshd.rb'

# include_cookbook 'ruby'
# include_cookbook 'nginx'

# package 'java-1.6.0-openjdk-devel.x86_64'

# include_recipe 'githubranks.rb'

service 'mysqld' do
  action [:stop, :disable]
end

service 'redis' do
  action [:stop, :disable]
end

# remote_file 'nginx.conf' do
#   path   '/etc/nginx/nginx.conf'
#   source 'files/nginx.conf'
#   owner  'root'
#   group  'root'
#   mode   '644'
#   notifies :reload, 'service[nginx]'
# end
