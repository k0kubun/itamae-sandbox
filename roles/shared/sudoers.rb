template '/etc/sudoers' do
  source 'templates/sudoers'
  mode   '440'
  owner  'root'
  group  'root'
end
