if curl -s --head http://rubykitchen.in/ | grep "200 OK" > /dev/null
  then 
		echo "Server running" > /dev/null
#		curl -s --head http://rubykitchen.in -w %{time_connect}:%{time_starttransfer}:%{time_total} > /home/neo/work/sandbox/monitor/responsetime
  else
		echo " Server Down at" `date` > $PWD/time
  	curl -s --head http://rubykitchen.in/ > $PWD/failed
		mail -s "Server Down " manu@rubykitchen.org < $PWD/failed
fi
