template 'sshd_config' do
  path   '/etc/ssh/sshd_config'
  source 'files/sshd_config'
  mode   '600'
end

service 'sshd' do
  action :nothing
  subscribes :restart, 'template[sshd_config]'
end
