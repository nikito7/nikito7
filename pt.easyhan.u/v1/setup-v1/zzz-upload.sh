#!/bin/sh

if [ ! $1 ] | [ ! $2 ]
then
echo error: $0 EB1 ipaddress
exit 1
fi

cd $1
pwd

for file in `ls .`
do
sleep 1
echo uploading: ${file} to: $2 from: $1
#
curl -s \
-F data=@${file} http://${2}/ufsu
#
echo error: $?
sleep 2
done

echo Done

# EOF

