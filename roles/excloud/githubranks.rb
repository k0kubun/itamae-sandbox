%w[githubranks githubranks/shared githubranks/shared/config].each do |dir|
  directory "/home/k0kubun/#{dir}" do
    owner 'k0kubun'
    group 'k0kubun'
    mode '755'
  end
end

remote_file '/home/k0kubun/githubranks/shared/.env' do
  source 'files/.env'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
end

remote_file '/home/k0kubun/githubranks/shared/config/secrets.yml' do
  source 'files/secrets.yml'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
end

remote_file '/home/k0kubun/githubranks/shared/config/database.yml' do
  source 'files/database.yml'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
end
