remote_file 'github_ranks/.env' do
  path   '/home/k0kubun/githubranks/shared/.env'
  source 'files/.env'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
end

directory '/home/k0kubun/githubranks/shared/config' do
  owner  'k0kubun'
  group  'k0kubun'
  mode   '755'
end

remote_file 'github_ranks/config/secrets.yml' do
  path   '/home/k0kubun/githubranks/shared/config/secrets.yml'
  source 'files/secrets.yml'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
end
