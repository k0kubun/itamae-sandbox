template 'iptables' do
  path   '/etc/sysconfig/iptables'
  source 'files/iptables'
  mode   '600'
end

execute '/sbin/service iptables restart' do
  action :nothing
  subscribes :run, 'template[iptables]'
end
