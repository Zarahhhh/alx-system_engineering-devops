# 7-puppet_install_nginx_web_server.pp
# This Puppet manifest installs and configures Nginx with a 301 redirect and a Hello World page

# Install the Nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure that Nginx service is running and reloads when configuration changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
  subscribe => File['/etc/nginx/sites-available/default'],  # Triggers a reload when config changes
}

# Create the custom index.html page with "Hello World!"
file { '/var/www/html/index.html':
  ensure  => file,
  content => "<html><body><h1>Hello World!</h1></body></html>",
  require => Service['nginx'],
}

# Configure the Nginx server block to listen on port 80 and redirect /redirect_me
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => '
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location / {
        try_files $uri $uri/ =404;
    }

    location /redirect_me {
        return 301 https://www.youtube.com;
    }
}
',
  notify  => Service['nginx'],  # Ensures nginx is notified of changes
}
