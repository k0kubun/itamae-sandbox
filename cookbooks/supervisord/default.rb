package 'supervisor'

service 'supervisord' do
  action [:enable, :start]
end

execute 'service supervisord restart' do
  action :nothing
end
