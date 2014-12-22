load_config 'sakura'

include_recipe '../shared/user.rb'
include_recipe '../shared/sudoers.rb'
include_recipe '../shared/sshd.rb'
include_recipe '../shared/iptables.rb'

include_recipe 'rbenv::system'
include_recipe '../shared/gem.rb'

include_cookbook 'mysql'
include_recipe '../shared/mysql.rb'

include_cookbook 'nginx'

template 'nginx.conf' do
  path   '/etc/nginx/nginx.conf'
  source 'files/nginx.conf'
  owner  'root'
  group  'root'
  mode   '644'
  notifies :reload, 'service[nginx]'
end
