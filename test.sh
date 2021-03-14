pkg install apache2
for((i=1;i<=10000;i++));
do
ab -n 10000 -c 1000 -t 13 -r http://t.polarice.top/
done
