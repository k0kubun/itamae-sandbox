load_config 'conoha'

include_recipe 'user.rb'
include_recipe '../shared/sudoers.rb'
include_recipe '../shared/sshd.rb'
include_recipe '../shared/iptables.rb'

include_recipe 'rbenv::system'
include_recipe '../shared/gem.rb'
