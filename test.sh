for ((i=1;i<=10));
do
pkg install apache2
ab -n 10000 -c 1000 -t 40 -r http://t.polarice.top/
done
