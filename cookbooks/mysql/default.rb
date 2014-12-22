package 'http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm' do
  not_if 'test -e /etc/yum.repos.d/mysql-community.repo'
end

package 'mysql-community-server'
package 'mysql-community-devel' # to pass bundle install
