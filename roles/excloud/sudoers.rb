template '/etc/sudoers' do
  # For old CentOS
  source 'templates/sudoers'
  mode   '440'
  owner  'root'
  group  'root'
end

