# 安装ReactApp下所有项目的依赖
cd ./ReactApp
for dir in `ls`
do cd $dir
echo 开始安装 ReactApp 下的 $dir 项目
npm i
echo ReactApp 下的 $dir 项目安装完成
cd ../
done
echo ReactApp 所有项目安装完成

# 安装VueApp下所有项目的依赖
cd ../VueApp
for dir in `ls`
do cd $dir
echo 开始安装 VueApp 下的 $dir 项目
npm i
echo VueApp 下的 $dir 项目安装完成
cd ../
done
echo VueApp 所有项目安装完成