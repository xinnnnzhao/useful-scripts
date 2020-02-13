#/bin/sh
pid=$1
echo pid:$pid
while [ -d /proc/$pid ]
do
	_result=`cat /proc/$pid/status | grep -e [VH][mu][Hg][We][Mt]` 2> /dev/null
	if [[ "$_result" != "" ]];then
		result=$_result
	fi
	sleep 0.25
done
echo $result
