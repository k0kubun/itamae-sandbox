template 'sshd_config' do
  path   '/etc/ssh/sshd_config'
  source 'templates/sshd_config'
  mode   '600'
end

execute '/sbin/service sshd restart' do
  action :nothing
  subscribes :run, 'template[iptables]'
end
