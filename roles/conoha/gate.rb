gate_package = 'gate_0.4_linux_amd64'

directory '/home/k0kubun/gate' do
  owner  'k0kubun'
  group  'k0kubun'
  mode   '755'
end

execute 'download gate' do
  not_if 'test -e /home/k0kubun/gate/gate_0.4_linux_amd64.tar.gz'
  command "cd /home/k0kubun/gate && wget https://github.com/typester/gate/releases/download/v0.4/#{gate_package}.tar.gz && tar xvzf #{gate_package}.tar.gz"
end

execute 'copy gate' do
  not_if 'test -e /home/k0kubun/gate/gate'
  command "cp /home/k0kubun/gate/#{gate_package}/gate /home/k0kubun/gate/gate"
end
