echo "你好，我是一个该死的shell脚本"
echo "自我介绍下，我叫菜比，你可以叫我菜比（废话）"
echo " "
echo "请尽量使用顶级域名"
echo "请使用termux终端来运行本shell，不然会失败"
echo " "
echo "注意，本测压工具不对后果进行任何承担"
echo "本测压工具可能会让网站造成超时无法连接"
echo " "
echo "请输入测试对象网址:"
read url
echo "请输入每秒发包数:"
read a
echo "请输入总发包数:"
read b
echo "已开始进行测压"
echo " "
echo "本脚本只用于学习研究用途，对于轰炸他人站点，后果自负"
echo "测压详情: "
echo "对象: ${url}"
echo "每秒发包数: ${a}"
echo "总发包数: ${b}"
echo " "
echo "测压完毕后将会自动生成测压报告"
pkg install apache2
ab -n ${b} -c ${a} ${url} 
