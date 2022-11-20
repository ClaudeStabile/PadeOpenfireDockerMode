#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

#wget -O openfire_2022-07-18.deb https://download.igniterealtime.org/openfire/dailybuilds/openfire_2022-07-18.deb 
#dpkg -i openfire_2022-07-18.deb 
#rm openfire_2022-07-18.deb 

echo "JaVaHome :"$JAVA_HOME
java -version

#wget -O openfire_4.7.3_all.deb https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.7.3_all.deb
#dpkg -i openfire_4.7.3_all.deb
#rm openfire_4.7.3_all.deb
#wget -O openfire_4_7_3.tar.gz https://github.com/igniterealtime/Openfire/releases/download/v4.7.3/openfire_4_7_3.tar.gz
#tar xvzf openfire_4_7_3.tar.gz -C /usr/share
#rm openfire_4_7_3.tar.gz

wget -O openfire_4.7.4_all.deb https://github.com/igniterealtime/Openfire/releases/download/v4.7.4/openfire_4.7.4_all.deb 
dpkg -i openfire_4.7.4_all.deb 
rm openfire_4.7.4_all.deb 


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.1/bookmarks.jar 
wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.4.5/fastpath.jar 
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.5/httpfileupload.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.3.1/monitoring.jar 
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.7.3/registration.jar 
wget -O push.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.0/pushserver.jar
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.1/externalservicediscovery.jar 
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/0.9.1/pushnotification.jar 
#wget -O pade.jar http://green-spider.free-solutions.org/pade.jar 
wget -O pade.jar https://github.com/igniterealtime/openfire-pade-plugin/releases/download/v1.7.3/pade.jar
wget -O hazelcast.jar https://www.igniterealtime.org/projects/openfire/plugins/2.6.0/hazelcast.jar
 
 #Cleaning...
# apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
