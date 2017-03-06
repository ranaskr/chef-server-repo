
#
# The package, named "httpd" is installed
#
# @see https://docs.chef.io/resource_package.html
#
package 'httpd' do 
	action:install
end

remote_file '/var/www/html/ironman.png' do 
	source 'https://www.sideshowtoy.com/photo.php?sku=902622'
end
#
# The template, named '/var/www/html/index.html' is created
#   with the source 'index.html.erb'
#
# @see https://docs.chef.io/resource_template.html
#
# The template file, named 'index.html.erb' can be found in the
#   the templates folder under default. This means for all platforms:
#
# @see https://docs.chef.io/resource_template.html#file-specificity
#

template '/var/www/html/index.html' do
	source 'index.html.erb'
	variables(:name=>'My Apache Server')
	action :create
	notifies :restart, 'service[httpd]', :immediately
end


#
# The service, named "httpd" is enabled and started
#
# @see https://docs.chef.io/resource_service.html

service 'httpd' do
	action [ :enable, :start ]
end






