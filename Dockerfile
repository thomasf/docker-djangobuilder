# VERSION               0.0.2
# DOCKER-VERSION        0.3.2
#
#
#
from    base:ubuntu-12.10
maintainer  Thomas Frössman <thomasf@josysstem.se>
run echo 'deb http://archive.ubuntu.com/ubuntu quantal main universe multiverse' > /etc/apt/sources.list
run DEBIAN_FRONTEND=noninteractive apt-get update
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q git && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q build-essential && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q python && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-dev && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-distribute && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-pip && apt-get clean
# Required for building pillow
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q libjpeg8-dev && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q zlib1g-dev && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q libfreetype6-dev && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q liblcms1-dev && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q libwebp-dev && apt-get clean
run DEBIAN_FRONTEND=noninteractive apt-get install -y -q libtiff-dev && apt-get clean
# Upgrade pip
run pip --no-input --exists-action=s install --upgrade pip
#
# django
# FIXME: should not be preinstalled
# run   pip install django uwsgi 
insert https://raw.github.com/thomasf/docker-djangobuilder/master/content/app /usr/local/bin/app
# insert https://raw.github.com/thomasf/docker-djangobuilder/master/content/git-wrapper /usr/local/bin/git
run echo "cd /var/django-app/" >> /.bash_rc
# expose  8000
cmd ["/usr/local/bin/app" "run"]
