#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

wget -O openfire_4.6.2_all.deb https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.6.2_all.deb 
dpkg -i openfire_4.6.2_all.deb 
rm openfire_4.6.2_all.deb 


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O bookmarks.jar https://webrtc.free-solutions.org/images/PLUGINS/bookmarks.jar
wget -O fastpath.jar https://webrtc.free-solutions.org/images/PLUGINS/fastpath.jar
wget -O httpfileupload.jar https://webrtc.free-solutions.org/images/PLUGINS/httpfileupload.jar
wget -O monitoring.jar https://webrtc.free-solutions.org/images/PLUGINS/monitoring.jar
wget -O registration.jar https://webrtc.free-solutions.org/images/PLUGINS/registration.jar
wget -O externalservicediscovery.jar https://webrtc.free-solutions.org/images/PLUGINS/externalservicediscovery.jar
wget -O pushnotification.jar https://webrtc.free-solutions.org/images/PLUGINS/pushnotification.jar
#wget -O pionturn.jar https://webrtc.free-solutions.org/images/PLUGINS/pionturn.jar
wget -O pade.jar https://webrtc.free-solutions.org/images/PLUGINS/pade.jar

 
 #Cleaning...
 apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
