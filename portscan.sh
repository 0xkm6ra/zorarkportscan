#!/bin/bash
if [ -z  "$1" ]
then
	echo "0XKM6RA - PORTSCAN"
	echo "Modo de uso: $0 REDE PORTA"
	echo "Exemplo: $0 192.168.0 80"
else
for ip in {1..254};
do
hping3 -S -p $2 -c 1 $1.$ip  2> /dev/null | grep "flags=SA"  | cut -d " " -f 2 | cut -d "=" -f 2
done
fi
