# nmap

## Targets

```sh
-iL <file>
-iR <file>          # random host
--exclude <host>
--excludefile <file>
```

## Parameters

```sh
nmap [SCANTYPE] [OPTIONS] {TARGET}
```

## Scan Type

```sh
-sS    TCP SYN
-sT    Connec()
-sA    ACK
-sW    Window
-sM    Maimon scans
-sU    UDP Scan

-sN     Tcp Null
-sF     FIN
-sX     Xmas scans
--scanflags <flags>: Customize TCP scan flags
-sI <zombie host[:probeport]>: Idle scan
-sY/sZ: SCTP INIT/COOKIE-ECHO scans
-sO: IP protocol scan
-b <FTP relay host>: FTP bounce scan
```

## Host Discovery

```sh
-sL     List Scan
-sn     Ping Scan

```

## Ports

```sh
-p <num>
-F          Fast mode
--top-ports

# spesific port
-p22 -p1-100 -p U:53,111 TCP:21-25,80

# all port
nmap -p- -A 192.168.1.4
```

## Output

```sh
--open
--packet-trace
--webxml -oX out.xml   # xml
-oN out.text           # text
-oS out                # s|<rIpt kIddi3
-oG out
-oA out                # All 3 format
```

## Vulnerability
```sh

nmap --script vuln
nmap -sV --script vulners

```
