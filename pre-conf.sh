#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

wget -O openfire_4.7.1_all.deb https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.7.1_all.deb 
dpkg -i openfire_4.7.1_all.deb 
rm openfire_4.7.1_all.deb 


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.0/bookmarks.jar 
wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.4.5/fastpath.jar 
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.4/httpfileupload.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.3.0/monitoring.jar 
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.7.3/registration.jar 
#wget -O pionturn.jar https://www.igniterealtime.org/projects/openfire/plugins/0.0.4/pionturn.jar
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.1/externalservicediscovery.jar 
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/0.9.0/pushnotification.jar 
wget -O pade.jar https://www.igniterealtime.org/projects/openfire/plugins/1.6.2/pade.jar
wget -O hazelcast.jar https://www.igniterealtime.org/projects/openfire/plugins/2.6.0/hazelcast.jar
 
 #Cleaning...
 apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
