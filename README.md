# nodeppt-docker
这是一个使用nodeppt写ppt的项目，此项目解决了nodeppt的js和css问题，并且尝试将静态文件打包在Docker镜像中.
# 依赖
* nodeppt 
* docker
# 如何使用本项目
clone这个仓库
```shell
git clone https://github.com/hellojukay/nodeppt-docker.git
```
修改REMADNE.md文件，或者直接在项目根目录下编写markdown格式文件，ppt语法请参考[nodeppt](https://github.com/ksky521/nodeppt)

编译markdown文件
```shell
nodeppt release
```
编译dockerfile
```shell
docker built -t ppt .
```
启动容器
```shell
docker run -itd --name ppt -p 80:80 ppt
```