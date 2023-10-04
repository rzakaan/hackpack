#!/bin/sh
echo `pwd`

zipfile=$1

rockyou=/usr/share/wordlists/rockyou.txt
johnpass=/usr/share/john/password.lst
wordlist=$rockyou

zip2john $zipfile > pass_hash
john --wordlist=$wordlist pass_hash
