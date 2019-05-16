# 打包ReactApp下的所有项目
cd ./ReactApp
for dir in `ls`
do cd $dir
echo 开始打包 ReactApp 下的 $dir 项目
npm run build
echo ReactApp 下的 $dir 项目打包完成
cd ../
done
echo ReactApp 所有项目打包完成

# 打包VueApp下的所有项目
cd ../VueApp
for dir in `ls`
do cd $dir
echo 开始打包 VueApp 下的 $dir 项目
npm run build
echo VueApp 下的 $dir 项目打包完成
cd ../
done
echo VueApp 所有项目打包完成