template 'iptables' do
  path   '/etc/sysconfig/iptables'
  source 'files/iptables'
  mode   '600'
end

service 'iptables' do
  action :nothing
  subscribes :restart, 'template[iptables]'
end
