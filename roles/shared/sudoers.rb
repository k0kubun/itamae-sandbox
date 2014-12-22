template '/etc/sudoers' do
  source 'files/sudoers'
  mode   '440'
  owner  'root'
  group  'root'
end
