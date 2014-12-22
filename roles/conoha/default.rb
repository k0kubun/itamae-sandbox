load_config 'conoha'

include_recipe '../shared/user.rb'
include_recipe '../shared/sudoers.rb'
include_recipe '../shared/sshd.rb'
include_recipe '../shared/iptables.rb'

include_recipe 'rbenv::system'
include_recipe '../shared/gem.rb'

include_cookbook 'mysql'
include_recipe '../shared/mysql.rb'
