############## Build: CloudClinik-1.134.0 ##############
	########### there is no change in facebook-ext till now #############
1.	Stop the CloudClinik Tomcat.
#2.	Look for the properties mentioned in "portal-ext.properties" file in your respective server, 
	and if you find a match, update that property, otherwise add new. 
3.	Copy all jar files from "tomcat-ext-lib" folder and paste in "$TOMCAT_HOME/lib/ext" folder.
4.	Copy all *.war files to "$CC_TOMCAT/deploy" folder, and change permissions of are .war files to ‘777’.
5.	Delete everything in the folders temp, work and logs, as follows:
	a.	cd /usr/CloudClinik/CC-Tomcat1/tomcat-7.0.42/
	b.	rm -rf temp/*
	c.	rm -rf work/*
	d.	rm -rf logs/*
6.	Then delete all CloudClinik installation files from tomcat webapps, as follows:
	a.	cd webapps/
	b.	rm -rf CC*
	c.	rm -rf CloudClinik*
	d.	rm -rf chat*
	e.	rm -rf faceboo*
	>> After this, there should be only 10 objects in this (webapps) folder.	
7.	Now, Start the CloudClinik tomcat.
8.	Execute "post-build.sql" file on cclinik database.
#9.	Execute "pre_counter_scripts.sql" file on cclinik database.
10.	
11.	Login with test and goto home page edit slider and update cloudclinik linik and border from 2px to 0 (CC-16 New Homepage Slider.txt)
12. Login with test and goto features screen and repace complete sourse code (CC-16 Features.txt)
13. 
14.	
15.	
16.	
17.	
18. 
#19.	For Fatima Group installation, import pages "fg-cc-pages.lar".
	For ENGRO installation, import pages "engro-cc-pages.lar",
		and for all others, import pages "cc-pages.lar".
#20. For installations other than 'QATAR FOUNDATION', 
		login with test user 'test', 'lradmin', or 'joebloggs', go to 'Admin' > 'Pages', 
		then find 'Other Reports' > 'Prescription Audit Trail', 
		and remove all 'VIEW' permissions against this page.
21. Create an entry for this build number in the "Google Sheets - Server Credentials" > "CC Build Log" sheet. 
#22. On NIH server, register a new user 'Doctor 630', login with CloudAdmin, open Configurations > Clinic, then add a new clinic with name 'Sehat Kahani Clinic 630' and select the newly registered as its doctor. System will assign an auto-generated CLINIC_ID to this clinic, change this CLINIC_ID to '630'.
	
		
NOTE: If "facebook-ext-6.2.0.1.war" or "CloudClinik-ext-6.2.0.1" is deployed in the build, restart the tomcat servers again after everything is deployed.
Following lines would indicate the need for restart:

"15:02:42,249 INFO  [localhost-startStop-2][ExtHotDeployListener:122] Registering extension environment for facebook-ext
15:02:42,249 INFO  [localhost-startStop-2][ExtHotDeployListener:128] Extension environment for facebook-ext has been applied."
