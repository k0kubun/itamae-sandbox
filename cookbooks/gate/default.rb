gate_package = 'gate_0.4_linux_amd64'

execute 'download gate' do
  not_if 'test -e /usr/local/bin/gate'
  command "cd /tmp && wget https://github.com/typester/gate/releases/download/v0.4/#{gate_package}.tar.gz && tar xvzf #{gate_package}.tar.gz"
end

execute 'copy gate' do
  not_if 'test -e /usr/local/bin/gate'
  command "cp /tmp/#{gate_package}/gate /usr/local/bin/gate"
end
