include_recipe 'rbenv::system'

RBENV_ROOT = '/usr/local/rbenv'
RBENV_INIT = <<-EOS
  export RBENV_ROOT=#{RBENV_ROOT}
  export PATH="#{RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init --no-rehash -)"
EOS

node[:rbenv][:gems].each do |gem|
  execute "gem install #{gem}" do
    command "#{RBENV_INIT} gem install #{gem}"
    not_if  "#{RBENV_INIT} gem list | grep #{gem}"
  end
end
