echo "Please enter the log file name "
read file_name
echo "total no of hits"
uniq -u $file_name |sort -u | wc -l 
echo "enter your ip address to know how many times u visited the site"
read ip
echo " you visited the site"
uniq -u $file_name | sort -u | grep $ip | wc -l
echo "Total No unique of visitors:"
awk '{ print $1 }' $file_name | sort -u |uniq -u | wc -l 

