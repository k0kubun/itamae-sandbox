template '/etc/sudoers' do
  # For old CentOS
  source 'files/sudoers'
  mode   '440'
  owner  'root'
  group  'root'
end

