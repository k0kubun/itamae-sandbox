node[:users].each do |user_info|
  user_name = user_info[:name]

  user user_name do
    password user_info[:password]
  end

  user user_name do
    gid 10 # wheel
  end

  # NOTE: some commands fails on CentOS 5.8, so do it
  # useradd k0kubun
  # passwd  k0kubun
  # usermod -G wheel k0kubun

  directory "/home/#{user_name}/.ssh" do
    owner user_name
    group user_name
    mode  '700'
  end

  file "/home/#{user_name}/.ssh/authorized_keys" do
    content user_info[:ssh_key]
    owner user_name
    group user_name
    mode  '600'
  end
end
