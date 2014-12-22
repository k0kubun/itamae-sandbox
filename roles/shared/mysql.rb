include_cookbook 'mysql'

template 'my.cnf' do
  path   '/etc/my.cnf'
  source 'templates/my.cnf'
  owner  'root'
  group  'root'
  mode   '644'
  notifies :restart, 'service[mysqld]'
end
