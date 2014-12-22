template "nginx.conf" do
  path   "/etc/nginx/nginx.conf"
  source "../templates/nginx.conf"
  owner  "root"
  group  "root"
  mode   "644"
  notifies :reload, "service[nginx]"
end
