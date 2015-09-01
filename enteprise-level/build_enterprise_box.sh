#/usr/bin/env bash

if [ $# != 2 ]; then
	echo 'This script requires 2 arguments: Base local VM name, Output box filename'
	exit -1
fi

BASE_VM_NAME=$1
BOX_FILENAME=$2

vagrant package \
   --base "${BASE_VM_NAME}" \
   --output "/tmp/${BOX_FILENAME}" \
   --include ./resources/provision.sh
   --vagrantfile ./Vagrantfile

# We can now upload the file to a server or copy to a read-only file share for everyone to use
# curl -i  -F "filedata=@/tmp/${BOX_FILENAME}" http://myhost/repo
