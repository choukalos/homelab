# Airprint

Airprint container to expose non-airprint compatible printers in the home to iOS devices

# setup
* Runs in host mode exposing the CUPS port (631).  
* login to <hostname:631> with CUPSADMIN/CUPSPASSWORD
* make sure you've selected 'Share This Printer' when configuring the printer in CUPS
* close web browser for at least 60s for the settings to be saved
* copy the services volume .service files into /etc/avahi/services so iOS devices can find them

# Configuring Brother HL-2270DW printer
Note this configuration doesn't work -> it prints 1 line at top of page of garbled characters and prints multiple pages

Model:  Generic IPP Printer
Connection:  lpd://ipaddress/BINARY_P1    
* tried lpd://ipaddress/queue ; same behavior this is what you're supposed to do for new printers
* tried ipp://ipaddress/ipp   ; same behavior
* tried ipp://ipaddress/ipp/port1 

# details
chuckcharlie/cups-avahi-airprint docker container
