#!/bin/bash

# HARSHITETHIC
echo "===================="
echo "   HARSHITETHIC"
echo "===================="
echo "Instagram: https://www.instagram.com/your_username/"
echo "GitHub: https://github.com/your_username"
echo ""

# List of packages
packages=(
  "perl"
  "httpd"
  "mariadb-server"
  "exim"
  "vsftpd"
  "bind"
  "openssl"
  "mod_security"
  "ImageMagick"
  "gd"
  "curl"
  "filezilla"
  "fail2ban"
  "suhosin"
  "webalizer"
  "awstats"
  "clamav"
  "spamassassin"
  "php"
  "perl-ExtUtils-Embed"
  "nodejs"
  "python"
  "ruby"
  "memcached"
  "redis"
  "mongodb-org"
  "nginx"
  "php-fpm"
  "postgresql"
  "varnish"
)

# Add necessary repositories
sudo yum install -y epel-release
sudo yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum-config-manager --enable remi-php74

# Update package lists
sudo yum update -y

# Install each package with confirmation
for package in "${packages[@]}"; do
  echo -n "Do you want to install ${package}? (y/n) "
  read -n 1 -r
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo yum install -y "${package}"
  fi
done
