#!/bin/sh

# Create user 'fah'
pw add user -n fah -c fah -s /bin/csh -m

# Configure shellinabox
fetch -o /home/tetris/white-on-black.css https://raw.githubusercontent.com/shellinabox/shellinabox/master/shellinabox/white-on-black.css
sysrc shellinaboxd_enable=YES
sysrc shellinaboxd_flags="--css /home/fah/white-on-black.css -t -s /:fah:fah:HOME:bastet"


# Install fah client 
sudo dpkg -i fahclient_7.6.21_amd64.deb



# Start the service
service shellinaboxd start
