package 'redis' do
  options '--enablerepo=epel -y'
  action :install
end

service 'redis' do
  action [:enable, :start]
end
