#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

wget -O openfire_4.6.4_all.deb https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.6.4_all.deb 
dpkg -i openfire_4.6.4_all.deb 
rm openfire_4.6.4_all.deb 


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
<<<<<<< HEAD
wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.3/bookmarks.jar 
wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.4.5/fastpath.jar 
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.4/httpfileupload.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.2.1/monitoring.jar 
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.7.3/registration.jar 
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.1/externalservicediscovery.jar 
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/0.9.0/pushnotification.jar 
wget -O pade.jar https://www.igniterealtime.org/projects/openfire/plugins/1.5.0/pade.jar
=======
#wget -O bookmarks.jar https://webrtc.free-solutions.org/images/PLUGINS/bookmarks.jar
#wget -O fastpath.jar https://webrtc.free-solutions.org/images/PLUGINS/fastpath.jar
#wget -O httpfileupload.jar https://webrtc.free-solutions.org/images/PLUGINS/httpfileupload.jar
#wget -O monitoring.jar https://webrtc.free-solutions.org/images/PLUGINS/monitoring.jar
#wget -O registration.jar https://webrtc.free-solutions.org/images/PLUGINS/registration.jar
#wget -O externalservicediscovery.jar https://webrtc.free-solutions.org/images/PLUGINS/externalservicediscovery.jar
#wget -O pushnotification.jar https://webrtc.free-solutions.org/images/PLUGINS/pushnotification.jar
#wget -O pade.jar https://webrtc.free-solutions.org/images/PLUGINS/pade.jar
>>>>>>> b2aaa51a17524bde65ba0fcd24813eab3cc47399

wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.3/bookmarks.jar
wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.4.5/fastpath.jar
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.3/httpfileupload.jar
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.2.1/monitoring.jar
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.7.3/registration.jar
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.1/externalservicediscovery.jar
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/0.8.0/pushnotification.jar
#wget -O pade.jar https://www.igniterealtime.org/projects/openfire/plugins/1.4.1/pade.jar 
wget -O pade.jar https://webrtc.free-solutions.org/images/PLUGINS/pade.jar
 
 #Cleaning...
 apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
