while getopts "i:" arg
do 
	case $arg in 
	i)
	echo "i"
	echo arg:$OPTARG
	ip=$OPTARG
	esac
done
echo $ip

