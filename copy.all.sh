# 
# 清空dist目录
rm -rf ./dist
# 新建基础目录
mkdir -p dist/static/js
mkdir -p dist/static/css
# cd ./dist
# rm ./dist/static/js/*
# rm -rf ./dist/static/css/*
# rm ./dist/*.html
# # 删除除了static、config的所有文件以及文件夹
# shopt -s extglob
# rm -rf !(static|config)
# cd ../

# 拷贝ReactApp下所有项目的build文件
cd ./ReactApp
for dir in `ls`
do cd $dir
echo 开始拷贝 ReactApp 下的 $dir
# 拷贝js
cp ./build/static/js/*.js ../../dist/static/js/
# 拷贝css
cp ./build/static/css/*.css ../../dist/static/css/
# 更改入口.html文件名
mv ./build/index.html ./build/$dir.html
# 拷贝入口.html等文件
cp ./build/* ../../dist
echo 拷贝 ReactApp 下的 $dir 完成
cd ../
done
echo ReactApp 下的项目拷贝完成

# 拷贝VueApp下所有项目的dist文件
cd ../VueApp
for dir in `ls`
do cd $dir
echo 开始拷贝 VueApp 下的 $dir
# 拷贝dist目录
cp -r ./dist/ ../../dist
# 更改入口.html文件名
mv ./dist/index.html ./dist/$dir.html
# 拷贝入口.html等文件
cp ./dist/* ../../dist
echo 拷贝 VueApp 下的 $dir 完成
cd ../
done
echo VueApp 下的项目拷贝完成