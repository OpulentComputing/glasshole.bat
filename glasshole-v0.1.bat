@echo off
ECHO Created by Opulent Computing

ECHO Version 0.1

ECHO glasshole.bat with Windows Server 2012 R2, 2012, 2008 R2, 2008 DHCP Server.

ECHO This batch fill will block any device with in the a MAC address range from obtaining an IP from the servers.

ECHO We assume you already have a Windows Server 2012 R2, 2012, 2008 R2, 2008 DHCP Server running. 

ECHO Save this file to your computer and run with Administrative privileges

ECHO You may also do this via the DHCP Server GUI.

ECHO enable the deny list filter
netsh dhcp server v4 set filter EnforceAllowList=0 EnforceDenyList=1

ECHO Setting the range and description to block. In this case any G00gle glass h0le devices
netsh dhcp server v4 add filter deny F8-8F-CA-24-*-* "glasshole-1"
netsh dhcp server v4 add filter deny F8-8F-CA-25-*-* "glasshole-2"

ECHO All done bye!
