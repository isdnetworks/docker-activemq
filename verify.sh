#!/bin/sh
if [ -z $1 ]; then
	echo "Usage: ${0} apache-activemq-x.y.z-bin.tar.gz"
	exit 1
fi
sha512sum -c $1.sha512 2> /dev/null | grep $1
