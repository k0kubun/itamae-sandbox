load_config 'excloud'

# include_recipe 'sudoers.rb'
# include_recipe 'user.rb'
# include_recipe '../shared/iptables.rb'
# include_recipe '../shared/sshd.rb'
include_recipe '../shared/mysql.rb'

# execute 'rpm -ivh http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/5/x86_64/epel-release-5-4.noarch.rpm'
# package 'git'
# package 'htop'

# service 'httpd' do
#   action [:stop, :disable]
# end

include_cookbook 'ruby'
include_cookbook 'nginx'
include_cookbook 'redis'
# include_cookbook 'supervisord'

include_recipe 'githubranks.rb'

# remote_file '/etc/supervisord.conf' do
#   source 'files/supervisord.conf'
#   owner  'k0kubun'
#   group  'k0kubun'
#   mode   '644'
#   notifies :run, 'execute[service supervisord restart]'
# end

remote_file 'nginx.conf' do
  path   '/etc/nginx/nginx.conf'
  source 'files/nginx.conf'
  owner  'root'
  group  'root'
  mode   '644'
  notifies :reload, 'service[nginx]'
end
