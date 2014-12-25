template 'github_ranks/.env' do
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

template 'github_ranks/config/secrets.yml' do
  path   '/home/k0kubun/githubranks/shared/config/secrets.yml'
  source 'files/secrets.yml'
  owner  'k0kubun'
  group  'k0kubun'
  mode   '644'
end

git '/home/k0kubun/githubranks/shared/light_blue' do
  repository 'git@bitbucket.org:k0kubun/light_blue'
end

# workaround for asset pipeline
directory '/home/k0kubun/githubranks/fonts' do
  owner  'k0kubun'
  group  'k0kubun'
  mode   '755'
end

# workaround for asset pipeline
link '/home/k0kubun/githubranks/fonts/assets' do
  to '/home/k0kubun/githubranks/current/light_blue/app/assets/fonts/light_blue'
end
