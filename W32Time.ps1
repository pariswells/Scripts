#On PDC
w32tm /config /manualpeerlist:"time.nist.gov,0x1"
w32tm /config /update
net stop w32time
net start w32time
w32tm /resync /nowait

#On DC and endpoints
w32tm /config /syncfromflags:domhier /update 
net stop w32time 
net start w32time


#reset to default
net stop w32time 
w32tm /unregister 
w32tm /register 
net start w32time


#Don't forget to check time on the hosts